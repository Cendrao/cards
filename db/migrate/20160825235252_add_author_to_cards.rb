class AddAuthorToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :author, :string
  end
end
