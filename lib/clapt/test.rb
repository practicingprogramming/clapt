require 'pty'

module Clapt
  # Test case.
  # TODO: comment, unit test.
  class Test
    attr_reader :name

    def initialize(name, &block)
      @name = name
      @block = block
      TestRegistry.instance.register(self)
    end

    def run
      @block.call(self)
    end

    def start(command)
      @stdout, @stdin, @pid = PTY.spawn(command)
    end

    def input(value)
      @stdin.puts value
      @last_input = value
    end

    # rubocop:disable HandleExceptions
    def output(expected)
      result = ''
      begin
        Timeout.timeout(1) do
          @stdout.each do |line|
            result += line if line.chomp != @last_input
          end
        end
      rescue Timeout::Error
      end
      fail "Output #{result} doesn't match expected #{expected}" unless result.match(expected)
    end
    # rubocop:enable HandleExceptions

    def terminate
      @stdin.close
      @stdout.close
    end
  end
end
