require 'rails_helper'

feature 'User visits a card' do

  scenario 'successfully' do
    card = Card.create(front: 'Com sucesso', back: 'successfully')
    visit card_path(card)
    expect(page).to have_content 'Pt: Com sucesso -> En: successfully'
  end
  
end
