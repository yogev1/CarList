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
end
