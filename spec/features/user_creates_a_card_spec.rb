require 'rails_helper'

feature 'User creates a Card' do
  scenario 'successfully' do
    visit new_card_path

    card = Card.new(front: 'Feche a porta!', back: 'Hold the door!')

    fill_in 'Front', with: card.front
    fill_in 'Back', with: card.back
    click_on 'Create Card'

    expect(page).to have_content card.friendly_description

  end

  scenario 'no values error' do
    visit new_card_path

    click_on 'Create Card'

    expect(page).to have_content 'You need to inform Front and Back'
  end


end
