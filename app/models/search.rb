class Search < ApplicationRecord

  def self.search_cars(search)
    
		cars = Car.all
	    cars = cars.where(["make LIKE ?","%#{make}%"]) if make.present?
	    cars = cars.where(["model LIKE ?","%#{model}%"]) if model.present?
	    cars = cars.where(["color_type LIKE ?","%#{color_type}%"]) if color_type.present?
	   	cars = cars.where(["start_year LIKE ?" > "%#{start_year}%"] && ["end_year LIKE ?" < "%#{end_year}%"]) 
    return cars
  end

end
