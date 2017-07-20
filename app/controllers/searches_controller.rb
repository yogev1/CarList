class SearchesController < ApplicationController

	def new
	  @search = Search.new
	end

	def create
	  @search = Search.create(search_params)
	  redirect_to @search
	end
	
	def show
	 
	end
	
	private

	  def search_params
	    params.require(:search).permit(:make, :model, :color, :start_year, :end_year)
	  end

end
