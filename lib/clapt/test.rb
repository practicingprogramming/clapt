module Clapt
  # Test case.
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
  end
end
