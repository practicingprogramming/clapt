describe Clapt::TestSuiteRunResult do
  describe '#add' do
    before do
      @test_suite_run_result = Clapt::TestSuiteRunResult.new
      @test_suite_run_result.add(Clapt::TestRunResult.new(nil, true))
    end

    it 'adds result to the list' do
      expect(@test_suite_run_result.test_run_results.length).to eq(1)
    end
  end
end
