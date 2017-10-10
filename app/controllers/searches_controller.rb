class SearchesController < ApplicationController
	
  def index
    @cars = Car.advanced_search(params[:make],params[:model],params[:color],params[:start_year],params[:end_year])
	end
	def new
	end
	
	private
    def search_params
      params.require(:search).permit(:make, :model, :color, :start_year, :end_year)
    end
end
