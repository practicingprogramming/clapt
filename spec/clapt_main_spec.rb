describe Clapt::ClaptMain do
  describe 'run' do
    before do
      @test_discoverer = double(Clapt::TestDiscoverer)
      allow(@test_discoverer).to receive(:discover).and_return('discovered tests')
      @test_runner = double(Clapt::TestRunner)
      allow(@test_runner).to receive(:run)
      @result_writer = double(Clapt::ResultWriter)
      allow(@result_writer).to receive(:update)
      @clapt_main = Clapt::ClaptMain.new(
        test_discoverer: @test_discoverer,
        directory: 'test_dir',
        test_runner: @test_runner,
        result_writer: @result_writer
      )
      @clapt_main.run
    end

    it 'discovers tests' do
      expect(@test_discoverer).to have_received(:discover).with('test_dir')
    end

    it 'runs tests' do
      expect(@test_runner).to have_received(:run)
    end
  end
end
