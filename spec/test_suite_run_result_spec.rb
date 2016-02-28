describe Clapt::TestSuiteRunResult do
  describe '#add' do
    before do
      @test_suite_run_result = Clapt::TestSuiteRunResult.new
      allow(@test_suite_run_result).to receive(:notify_observers)
      allow(@test_suite_run_result).to receive(:changed)
      @test_suite_run_result.add(Clapt::TestRunResult.new(nil, true))
    end

    it 'adds result to the list' do
      expect(@test_suite_run_result.test_run_results.length).to eq(1)
    end

    it 'notifies observers' do
      expect(@test_suite_run_result).to have_received(:changed)
      expect(@test_suite_run_result).to have_received(:notify_observers)
    end
  end
end
