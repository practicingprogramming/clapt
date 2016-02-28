require 'singleton'

module Clapt
  # Test registry.
  class TestRegistry
    include Singleton

    attr_reader :tests

    def initialize
      reset
    end

    def reset
      @tests = []
    end

    def register(test)
      @tests << test
    end
  end
end
