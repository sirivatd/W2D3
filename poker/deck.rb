require_relative 'card.rb'

class Deck
  attr_accessor :cards
  
  def populate_deck
    vals = ['A','2','3','4','5','6','7','8','9','10','J','Q','K']
    suits = ["Clovers","Diamonds","Hearts","Spades"]
    colors = ["Red","Black"]
    card_pile = []
    i = 0
    while i < vals.length
      j = 0
      while j < suits.length
        k = 0
        while k < colors.length
          new_card = Card.new(vals[i],colors[k],suits[j])
          card_pile.push(new_card)
          k += 1
        end
        j += 1
      end
      i += 1
    end
    card_pile
  end
  
  def initialize
    @cards = populate_deck
    puts @cards.length
  end
end