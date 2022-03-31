require 'string_calculator'

describe StringCalculator do
  context 'given an empty string' do
    it 'returns zero' do
      expect(StringCalculator.add('')).to eq(0)
    end
  end

  context 'give 4' do
    it 'return 4' do
      expect(StringCalculator.add('4')).to eq(4)
    end
  end

  context 'given 10' do
    it 'return 10' do
      expect(StringCalculator.add('10')).to eq(10)
    end
  end

  context 'two numbers' do
    it "given '2,4' return 6" do
      expect(StringCalculator.add('2,4')).to eq(6)
    end

    it "given '105,17' return 122" do
      expect(StringCalculator.add('105,17')).to eq(122)
    end
  end
end
