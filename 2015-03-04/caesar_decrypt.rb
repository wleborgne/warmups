#!/usr/bin/env ruby

def decrypt(encrypted_message, shift_value)
  letters = ('a'..'z').to_a

  encrypted_message.downcase.each_char do |character|
    if character == ' '
      print character
    else
      print letters[(letters.index(character) + shift_value) % 26]
    end
  end
  puts
end

encrypted_message, shift_input = ARGV

if !shift_input.nil?
  puts "Using shift of #{shift_input}:"
  decrypt(encrypted_message, shift_input.to_i)
else
  26.times do |number|
    shift_value = number + 1
    puts "With a shift of #{shift_value}:"
    decrypt(encrypted_message, shift_value)
  end
end
