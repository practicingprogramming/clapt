module Clapt
  # Test Runner
  class TestRunner
    def run(test_registry, test_suite_run_result)
      test_registry.tests.each do |test|
        begin
          test.run
          test_suite_run_result.add(TestRunResult.new(test, true))
        rescue StandardError => e
          test_suite_run_result.add(TestRunResult.new(test, false))
          puts e.inspect
        end
      end
    end
  end
end
