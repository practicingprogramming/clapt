module Clapt
  # Main Class
  class ClaptMain
    def initialize(args)
      @test_discoverer = args[:test_discoverer]
      @directory = args[:directory]
    end

    def run
      @test_registry = @test_discoverer.discover(@directory)
      puts "Tests: #{TestRegistry.instance.tests}"
    end
  end
end
