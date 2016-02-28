module Clapt
  # Test case.
  class Test
    def initialize(name)
      @name = name
      TestRegistry.instance.register(self)
    end
  end
end
