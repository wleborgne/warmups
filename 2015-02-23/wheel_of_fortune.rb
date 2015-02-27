#!/usr/bin/env ruby

# Create a hash keyed on letters
letters_count = Hash.new(0)

# Open the words file, for each line remove the newline,
# downcase the word, then for each remaining char increment
# the count in the letters_count hash
File.open('/usr/share/dict/words', 'r').each_line do |word|
  word.chomp.downcase.each_char { |letter| letters_count[letter] += 1 }
  # Alternative:
  # word.downcase.scan(/./).each do |letter|
  #
end

# puts letters_count.sort_by{|letter, occurrences| occurrences}
# sorts hash by the occurrences

# For the vowels, add them to a new hash,
# and delete them from the original hash
# Alternate:
# vowels = letters.select{|letter, _| %w(a e i o u y).include(letter)}

vowels = { 'a' => letters_count.delete('a'),
           'e' => letters_count.delete('e'),
           'i' => letters_count.delete('i'),
           'o' => letters_count.delete('o'),
           'u' => letters_count.delete('u') }
puts vowels.sort_by { |_, occurrences| occurrences }.reverse.first(3)

# The remainder of the letters_count hash will contain
# the consonants (and some other chars we haven't filtered out)
# Alternate:
# consonants =  letters.reject{|letter, _| %w(a e i o u y).include(letter)}

consonants = letters_count
puts consonants.sort_by { |_, occurrences| occurrences }.reverse.first(5)

# Sort hashes(?) and get top 3 vowels and top 5 consonants
