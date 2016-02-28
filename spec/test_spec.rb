describe Clapt::Test do
  describe '#initialize' do
    before do
      Clapt::TestRegistry.instance.reset
      @test = Clapt::Test.new 'test name' do end
    end

    after do
      Clapt::TestRegistry.instance.reset
    end

    it 'registers itself in the registry' do
      expect(Clapt::TestRegistry.instance.tests).to eq([@test])
    end
  end

  describe '#run' do
    before do
      @value = 'not updated'
      @test = Clapt::Test.new 'test name' do |t|
        @value = 'updated'
      end
      @test.run
    end

    after do
      Clapt::TestRegistry.instance.reset
    end

    it 'executes the block' do
      expect(@value).to eq('updated')
    end
  end
end
