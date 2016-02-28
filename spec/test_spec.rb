describe Clapt::Test do
  describe '#initialize' do
    before do
      Clapt::TestRegistry.instance.reset
      @test = Clapt::Test.new('test name')
    end

    after do
      Clapt::TestRegistry.instance.reset
    end

    it 'registers itself in the registry' do
      expect(Clapt::TestRegistry.instance.tests).to eq([@test])
    end
  end
end
