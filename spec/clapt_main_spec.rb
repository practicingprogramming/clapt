describe Clapt::ClaptMain do
  describe 'run' do
    before do
      @test_discoverer = double
      allow(@test_discoverer).to receive(:discover).and_return('discovered tests')
      @clapt_main = Clapt::ClaptMain.new(
        test_discoverer: @test_discoverer
      )
      @clapt_main.run
    end

    it 'discovers tests' do
      expect(@test_discoverer).to have_received(:discover)
    end
  end
end
