class AddAttributesToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :description, :string
    add_column :cars, :price, :integer
    add_column :cars, :condition, :string
  end
end
