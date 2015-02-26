#!/usr/bin/env ruby

# Implement a playing card
class Card
  attr_reader :suit, :face_value
  def initialize(face_value, suit)
    @face_value = face_value
    @suit = suit
  end

  def to_s
    "#{face_value} of #{suit}"
  end
end

# Implement a standard deck of cards
class Deck
  SUITS = %w(Spades Hearts Clubs Diamonds)
  VALUES = %w(Ace 2 3 4 5 6 7 8 9 10 Jack Queen King)

  def initialize
    @deck = []

    SUITS.each { |suit| VALUES.each { |value| @deck << Card.new(value, suit) } }
  end

  def shuffle
    @deck.shuffle!
  end

  def deal
    @deck.pop
  end

  def to_s
    @deck.each(&:to_s)
  end

  def count
    @deck.count
  end
end

if __FILE__ == $PROGRAM_NAME
  my_deck = Deck.new
  puts my_deck.to_s

  my_deck.shuffle
  puts my_deck.to_s

  puts "Here's a card: #{my_deck.deal}"
  puts "Here's another: #{my_deck.deal}"
  puts "There are now #{my_deck.count} cards left."
end
