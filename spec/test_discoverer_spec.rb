describe Clapt::TestDiscoverer do
  describe 'discover' do
    before do
      allow(Dir).to receive(:glob) { [ '/path/to/test_clapt.rb' ] }
      allow(File).to receive(:read).with('/path/to/test_clapt.rb') { 'file_content' }
      allow(Kernel).to receive(:eval)
      test_discoverer = Clapt::TestDiscoverer.new
      test_discoverer.discover 'test_dir'
    end

    it 'discovers tests' do
      expect(Kernel).to have_received(:eval).with('file_content')
    end
  end
end
