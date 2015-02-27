# Ted and Sam have $12.50, candy bars
# cost $0.75.  How many candy bars can
# they buy?

money = 12.50
price = 0.75
number_of_bars = (money / price).to_i

puts "They can buy #{number_of_bars} candy bars."

# Another way
while money > price
  money -= price
  puts "Purchase one bar (#{money} left)"
end
