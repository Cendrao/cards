class Card < ApplicationRecord
  validates :front, :back, presence: true

  def friendly_description
    "Pt: #{front} -> En: #{back}"
  end
end
