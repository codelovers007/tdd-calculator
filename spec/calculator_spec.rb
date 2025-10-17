require 'rspec'
require_relative '../calculator'

RSpec.describe Calculator do
  describe '.add' do
    it 'returns 0 if string is empty' do
      expect(Calculator.add("")).to eq(0)
    end
  end
end