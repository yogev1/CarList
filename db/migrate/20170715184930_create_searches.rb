class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :make
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
