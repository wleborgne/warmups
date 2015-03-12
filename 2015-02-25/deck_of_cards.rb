#!/usr/bin/env ruby

# Implement a playing card
class Card
  attr_reader :suit, :face_value

  # CLUB = "\u2663"
  # DIAMOND = "\u2666"
  # SPADE = "\u2660"
  # HEART = "\2764"
  # then create via Card.new(2, Card::CLUB)
  # How to use this in Deck?
  def initialize(face_value, suit)
    @face_value = face_value
    @suit = suit
  end

  def to_s
    "#{face_value} of #{suit}"
  end

  # def <=>(other)
  #   if suit == other.suit
  #     Card.values.index(value) <=> Card.values.index(other.value)
  #   else
  #    Cards.suits.index(suit) <=> Card.suits.index(other.suit)
  #   end
  # end
end

# Implement a standard deck of cards
class Deck
  # These should be in Card?
  SUITS = %w(Spades Hearts Clubs Diamonds)
  # SUITS = %w(Card::CLUB Card::DIAMOND Card::SPADE Card::HEART)
  VALUES = %w(Ace 2 3 4 5 6 7 8 9 10 Jack Queen King)

  def initialize
    @deck = []

    SUITS.each { |suit| VALUES.each { |value| @deck << Card.new(value, suit) } }
  end

  def shuffle
    @deck.shuffle!
  end

  def deal
    if @deck.length > 0
      @deck.pop
    else
      'No more cards'
    end
  end

  def random_card
    @deck.delete_at(rand(52))
  end

  def to_s
    if @deck.length > 0
      @deck.each(&:to_s)
    else
      'Empty deck'
    end
  end

  def count
    @deck.count
  end

  def sort!
    @deck.sort!
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
  puts "Random card: #{my_deck.random_card}"
  puts "#{my_deck.count} cards left."
end
