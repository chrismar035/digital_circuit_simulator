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

