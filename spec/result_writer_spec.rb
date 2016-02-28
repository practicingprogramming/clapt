describe Clapt::ResultWriter do
  describe '#update' do
    before do
      @result_writer = Clapt::ResultWriter.new
      allow(Kernel).to receive(:puts)
      successful_test = Clapt::Test.new 'success' do end
      failing_test = Clapt::Test.new 'failure' do end
      @result_writer.update(Clapt::TestRunResult.new(successful_test, true))
      @result_writer.update(Clapt::TestRunResult.new(failing_test, false))
    end

    it 'writes test results' do
      expect(Kernel).to have_received(:puts).with 'Test succeeded: success'
      expect(Kernel).to have_received(:puts).with 'Test failed: failure'
    end
  end
end
