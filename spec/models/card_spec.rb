require 'rails_helper'

describe Card do
  describe "#friendly_description" do

    it 'should show Pt: Olá -> En: Hello when back is Hello and front is Olá' do
      card = Card.new(front: "Olá", back: "Hello")
      expect(card.friendly_description).to eq 'Pt: Olá -> En: Hello'
    end

    it 'should show Pt: Vermelho -> En: Red when back is Red and front is Vermelho' do
      card = Card.new(front: 'Vermelho', back: 'Red')
      expect(card.friendly_description).to eq 'Pt: Vermelho -> En: Red'
    end

  end
end
