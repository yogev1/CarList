class RemoveYearFromSearches < ActiveRecord::Migration[5.0]
  def change
    remove_column :searches, :year, :string
  end
end
