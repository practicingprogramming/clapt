module Clapt
  # Test Suite Run Result.
  class TestSuiteRunResult
    attr_reader :test_run_results

    def initialize
      @test_run_results = []
    end

    def add(test_run_result)
      @test_run_results << test_run_result
    end
  end
end
