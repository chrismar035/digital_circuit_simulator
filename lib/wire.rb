class Wire
  def initialize(signal_value: nil)
    @signal_value = signal_value
  end

  def get_signal
    @signal_value
  end

  def set_signal!(new_value)
    @signal_value = new_value
  end
end
