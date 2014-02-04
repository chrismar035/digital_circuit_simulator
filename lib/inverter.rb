class Inverter
  def compute(a)
    case a
    when 0
      1
    when 1
      0
    else
      raise 'Invalid input was given to Inverter'
    end
  end
end
