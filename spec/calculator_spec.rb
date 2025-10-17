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
  end
end