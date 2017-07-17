class RemoveAttributesFromCar < ActiveRecord::Migration[5.0]
  def change
    remove_column :cars, :image_file_name, :string
    remove_column :cars, :image_content_type, :string
    remove_column :cars, :image_file_size, :integer
    remove_column :cars, :image_updated_at, :datetime
  end
end
