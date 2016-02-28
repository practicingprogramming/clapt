module Clapt
  # Test Run Result
  class TestRunResult
    attr_reader :test
    attr_reader :success
    alias success? success

    def initialize(test, success)
      @test = test
      @success = success
    end
  end
end
