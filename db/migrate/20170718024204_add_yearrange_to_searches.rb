class AddYearrangeToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :start_year, :integer
    add_column :searches, :end_year, :integer
  end
end
