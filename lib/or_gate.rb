class OrGate
  def compute(a, b)
    case [a, b]
    when [0, 0]
      0
    when [0, 1], [1, 0], [1, 1]
      1
    else
      raise 'Invalid binary input for OrGate'
    end
  end
end
