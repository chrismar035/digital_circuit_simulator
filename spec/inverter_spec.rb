require 'spec_helper'

describe Inverter do
  describe '#compute' do
    let(:inversion) { subject.compute(input) }

    context 'when the input is 0' do
      let(:input) { 0 }

      it 'is 1' do
        expect(inversion).to eq 1
      end
    end

    context 'when the input is 1' do
      let(:input) { 1 }

      it 'is 0' do
        expect(inversion).to eq 0
      end
    end

    context 'with an invalid input' do
      let(:input) { 'invalid' }

      it 'raises an error' do
        expect{ inversion }.to raise_error
      end
    end
  end
end
