class HalfAdder
  def self.add(a, b)
    carry = AndGate.new.compute(a, b)
    d = OrGate.new.compute(a, b)
    e = Inverter.new.compute(carry)
    sum = AndGate.new.compute(d, e)
    return sum, carry
  end
end
