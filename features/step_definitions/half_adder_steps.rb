Given(/^(\d+) and (\d+)$/) do |a, b|
  @a = a
  @b = b
end

When(/^half adder finishes calculations$/) do
  @s, @c = HalfAdder.add(@a, @b)
end

Then(/^(\d+) and (\d+) are generated$/) do |s, c|
  expect(@s).to eq s
  expect(@c).to eq c
end
