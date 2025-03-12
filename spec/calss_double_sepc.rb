# class Deck
#   def self.build
#     # Bussinesslogin to buil deck of cards
#   end
# end

class Card
  attr_accessor  :cards

  def start
    @cards = Deck.build
  end
end


RSpec.describe Card do

  it 'can only implement calss method defined in the calss' do
    # class_desck = class_double(Deck, build: ["Aces", "Queens"])
    class_deck = class_double('Deck', build: ["Ace", "Aueen"]).as_stubbed_const
    expect(class_deck).to receive(:build)
    subject.start
    expect(subject.cards).to eq(["Ace", "Aueen"])
  end
end
