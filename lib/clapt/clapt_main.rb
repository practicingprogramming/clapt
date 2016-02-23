module Clapt
  class ClaptMain
    def initialize(args)
      @test_discoverer = args[:test_discoverer]
    end

    def run
      @test_registry = @test_discoverer.discover
    end
  end
end
