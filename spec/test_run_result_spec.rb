describe Clapt::TestRunResult do
  describe '#initialize' do
    it do
      expect(Clapt::TestRunResult.new(nil, true).success?).to be_truthy
      expect(Clapt::TestRunResult.new(nil, false).success?).to be_falsy
    end
  end
end
