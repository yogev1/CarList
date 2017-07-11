class AddColorTypeToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :color_type, :string
  end
end
