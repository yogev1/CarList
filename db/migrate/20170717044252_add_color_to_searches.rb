class AddColorToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :color, :string
  end
end
