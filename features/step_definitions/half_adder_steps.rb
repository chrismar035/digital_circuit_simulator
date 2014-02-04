Given(/^(\d+) and (\d+)$/) do |a, b|
:xa

  @a = a.to_i
  @b = b.to_i
end

When(/^half adder finishes calculations$/) do
  @s, @c = HalfAdder.add(@a, @b)
end

Then(/^(\d+) and (\d+) are generated$/) do |s, c|
  expect(@s).to eq s.to_i
  expect(@c).to eq c.to_i
end
