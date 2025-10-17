require 'rspec'
require_relative '../calculator'

RSpec.describe Calculator do
  describe '.add' do
    subject(:result) { Calculator.add(input) }

    context 'when the string is empty' do
      let(:input) { "" }
      it { is_expected.to eq(0) }
    end

    context 'when there is a single number' do
      let(:input) { "1" }
      it { is_expected.to eq(1) }
    end

    context 'when there are two numbers' do
      let(:input) { "1,2" }
      it { is_expected.to eq(3) }
    end

    context 'when there are multiple numbers' do
      let(:input) { "1,2,3" }
      it { is_expected.to eq(6) }
    end

    context 'when numbers are separated by newlines and commas' do
      let(:input) { "1\n2,3" }
      it { is_expected.to eq(6) }
    end

    context 'when using a custom delimiter' do
      let(:input) { "//;\n1;2" }
      it { is_expected.to eq(3) }
    end

    context 'when there is a negative number' do
      let(:input) { "1,-2,3" }
      it 'raises an error with the negative number' do
        expect { result }.to raise_error("negative numbers not allowed: -2")
      end
    end

    context 'when there are multiple negative numbers' do
      let(:input) { "1,-2,-3" }
      it 'raises an error with all the negative numbers' do
        expect { result }.to raise_error("negative numbers not allowed: -2,-3")
      end
    end
  end
end
