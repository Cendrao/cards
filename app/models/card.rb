class Card < ApplicationRecord
  has_many :comments
  validates :front, :back, presence: true

  def friendly_description
    "Pt: #{front} -> En: #{back}"
  end
end
