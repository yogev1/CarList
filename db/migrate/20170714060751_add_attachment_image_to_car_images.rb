class AddAttachmentImageToCarImages < ActiveRecord::Migration
  def self.up
    change_table :car_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :car_images, :image
  end
end
