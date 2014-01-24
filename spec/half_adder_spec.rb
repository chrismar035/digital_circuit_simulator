class HalfAdder
  def self.add(a, b)
    return 0, 0
  end
end

describe HalfAdder do
  it 'exists' do
    expect{ HalfAdder }.not_to raise_error
  end

  context 'when two binary inputs are given' do
    before do
      @sum, @carry = HalfAdder.add(input1, input2)
    end

    context 'and input1 is 0' do
      let(:input1) { 0 }

      context 'and input2 is 0' do
        let(:input2) { 0 }

        it 'returns sum as 0' do
          expect(@sum).to eq 0
        end

        it 'returns carry as 0' do
          expect(@carry).to eq 0
        end
      end

      context 'when input2 is 1' do
        let(:input2) { 1 }

        it 'returns sum as 1' do
          expect(@sum).to eq 1
        end

        it 'returns carry as 0' do
          expect(@carry).to eq 0
        end
      end
    end

    context 'and input1 is 1' do
      let(:input1) { 1 }

      context 'and input2 is 0' do
        let(:input2) { 0 }

        it 'returns sum as 0' do
          expect(@sum).to eq 0
        end

        it 'returns carry as 0' do
          expect(@carry).to eq 0
        end
      end

      context 'when input2 is 1' do
        let(:input2) { 1 }

        it 'returns sum as 1' do
          expect(@sum).to eq 1
        end

        it 'returns carry as 0' do
          expect(@carry).to eq 0
        end
      end
    end
  end
end
