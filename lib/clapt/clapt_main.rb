module Clapt
  # Main Class
  class ClaptMain
    def initialize(args)
      @test_discoverer = args[:test_discoverer]
      @directory = args[:directory]
      @test_runner = args[:test_runner]
      @result_writer = args[:result_writer]
    end

    def run
      @test_discoverer.discover(@directory)
      test_suite_run_result = TestSuiteRunResult.new
      test_suite_run_result.add_observer(@result_writer)
      @test_runner.run(TestRegistry.instance, test_suite_run_result)
    end
  end
end
