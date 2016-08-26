
require 'rails_helper'

feature 'User comments a card' do
  scenario 'successfully' do
    card = Card.create(front: 'Red', back: 'Livro', author: 'Matheus')

    visit card_path(card)
    fill_in 'Author', with: 'Tony Stark'
    fill_in 'Comment', with: 'Nice!'
    click_on 'Send'

    expect(page).to have_content "#{card.friendly_description}"
    expect(page).to have_content "Tony Stark says: Nice!"

  end
  
end
