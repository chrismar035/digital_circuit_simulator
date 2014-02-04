require 'spec_helper'

describe Wire do
  let(:wire) { Wire.new(signal_value: initial_signal_value) }

  describe '#get_signal' do
    let(:initial_signal_value) { 0 }

    it 'returns current value' do
      expect(wire.get_signal).to eq initial_signal_value
    end
  end

  describe '#set_signal!' do
    let(:initial_signal_value) { 1 }
    let(:new_signal_value) { 0 }

    it 'sets given signal value' do
      wire.set_signal!(new_signal_value)
      expect(wire.get_signal).to eq new_signal_value
    end
  end
end
