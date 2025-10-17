require 'rspec'
require_relative '../calculator'

RSpec.describe Calculator do
  describe '.add' do
    it 'returns 0 if string is empty' do
      expect(Calculator.add("")).to eq(0)
    end

    it 'returns the number itself if a single number' do
      expect(Calculator.add('1')).to eq(1)
    end

    it 'returns the sum of two numbers' do
      expect(Calculator.add('1,2')).to eq(3)
    end

    it 'returns the sum of multiple numbers' do
      expect(Calculator.add('1,2,3')).to eq(6)
    end

    it 'handles newlines between numbers' do
      expect(Calculator.add("1\n2,3")).to eq(6)
    end

    it 'handles different delimiters' do
      expect(Calculator.add("//;\n1;2")).to eq(3)
    end
  end
end