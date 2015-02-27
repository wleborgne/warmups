# Peter, Julie and Betty go fishing
# Julie caught 5 fish
# Peter caught 7 fish
# combined they caught 22 fish
# How many did Betty catch?

def betty_fish
  fish_total = 22
  peter_fish = 7
  julie_fish = 5
  fish_total - (peter_fish + julie_fish)
end

puts "Betty caught #{betty_fish} fish"
