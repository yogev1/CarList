class Search < ApplicationRecord

  def search_cars
    
		cars = Car.all
	    cars = cars.where(["make LIKE ?","%#{make}%"]) if make.present?
	    cars = cars.where(["model LIKE ?","%#{model}%"]) if model.present?
	    cars = cars.where(["color LIKE ?","%#{color}%"]) if color.present?
	   	cars = cars.where(["year LIKE ?" > "%#{start_year}%"] && ["year LIKE ?" < "%#{end_year}%"]) if year.present?

    return cars
  end

end
