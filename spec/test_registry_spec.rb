describe Clapt::TestRegistry do
  describe 'register' do
    before do
      Clapt::TestRegistry.instance.reset
      Clapt::TestRegistry.instance.register('abc')
    end

    after do
      Clapt::TestRegistry.instance.reset
    end

    it 'registers tests' do
      expect(Clapt::TestRegistry.instance.tests).to eq(['abc'])
    end
  end
end
