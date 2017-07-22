class Search < ApplicationRecord

  def search_cars
    
		cars = Car.all
	    cars = cars.where(make: make) if make.present?
	    cars = cars.where(model: model) if model.present?
	    cars = cars.where(color_type: color) if color.present?
	   	cars = cars.where(["year BETWEEN ? AND ?", start_year, end_year]) if start_year && end_year
    return cars
  end

end
