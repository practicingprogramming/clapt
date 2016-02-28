module Clapt
  # Test case.
  class Test
    def initialize(name, &block)
      @name = name
      @block = block
      TestRegistry.instance.register(self)
    end

    def run
      @block.call
    end
  end
end
