class HalfAdder
  def self.add(a, b)
    sum = a ^ b
    carry = a & b
    return sum, carry
  end
end
