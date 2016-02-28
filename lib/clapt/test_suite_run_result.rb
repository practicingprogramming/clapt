require 'observer'

module Clapt
  # Test Suite Run Result.
  class TestSuiteRunResult
    include Observable

    attr_reader :test_run_results

    def initialize
      @test_run_results = []
    end

    def add(test_run_result)
      @test_run_results << test_run_result
      changed
      notify_observers(test_run_results)
    end
  end
end
