class Car < ActiveRecord::Base
    
  belongs_to :user
  has_many :car_images, :dependent => :destroy
  accepts_nested_attributes_for :car_images, :reject_if => :all_blank, :allow_destroy => true

  def main_image
    car_images.first.image
  end

  def all_image
    car_images.all
  end

  def self.search(search)
    where("make LIKE ? OR model LIKE ? OR color_type LIKE ? OR year LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  end

  def self.advanced_search(make,model,color_type,start_year,end_year)
    where("make LIKE ? AND model LIKE ? AND color_type LIKE ? AND (year BETWEEN ? AND ?)", "%#{make}%", "%#{model}%", "%#{color_type}%", start_year, end_year) 
  end
end
