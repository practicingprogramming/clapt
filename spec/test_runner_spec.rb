describe Clapt::TestRunner do
  describe '#run' do
    before do
      @registry = double(Clapt::TestRegistry)
      @run_result = Clapt::TestSuiteRunResult.new
      @succeeding_test = Clapt::Test.new 'succeeds' do end
      @failing_test = Clapt::Test.new 'fails' do raise 'some error' end
      allow(@registry).to receive(:tests) { [@succeeding_test, @failing_test] }
      @test_runner = Clapt::TestRunner.new
      @test_runner.run(@registry, @run_result)
    end

    it 'populates test result' do
      expect(@run_result.test_run_results.length).to eq(2)
      expect(@run_result.test_run_results[0].test).to eq(@succeeding_test)
      expect(@run_result.test_run_results[0].success?).to be_truthy
      expect(@run_result.test_run_results[1].test).to eq(@failing_test)
      expect(@run_result.test_run_results[1].success?).to be_falsy
    end
  end
end
