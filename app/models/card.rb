class Card < ApplicationRecord
  def friendly_description
    "Pt: #{front} -> En: #{back}"
  end
end
