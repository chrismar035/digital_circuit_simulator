class AndGate
  def compute(a, b)
    case [a, b]
    when [0, 0], [0, 1], [1, 0]
      0
    when [1, 1]
      1
    else
      raise 'Invalid binary input for AndGate'
    end
  end
end

describe AndGate do
  describe '#compute' do
    let(:output) { subject.compute(input1, input2) }

    context 'when the first binary input is 0' do
      let(:input1) { 0 }
      context 'and the second input is 0' do
        let(:input2) { 0 }

        it 'is 0' do
          expect(output).to be 0
        end
      end

      context 'and the second input is 1' do
        let(:input2) { 1 }

        it 'is 0' do
          expect(output).to be 0
        end
      end
    end

    context 'when the first binary input is 1' do
      let(:input1) { 1 }
      context 'and the second input is 0' do
        let(:input2) { 0 }

        it 'is 0' do
          expect(output).to be 0
        end
      end

      context 'and the second input is 1' do
        let(:input2) { 1 }

        it 'is 1' do
          expect(output).to be 1
        end
      end
    end

    context 'when invalid inputs are given' do
      let(:input1) { 'invalid input 1' }
      let(:input2) { 'invalid input 2' }

      it 'raise invalid input error' do
        expect { output }.to raise_error
      end
    end
  end
end
