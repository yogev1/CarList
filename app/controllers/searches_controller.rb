class SearchesController < ApplicationController

	def new
	  @search = Search.new
	end

	def create
	  @search = Search.create(search_params)
	  redirect_to @search
	end
	
	def show
	  @search = Search.search(params[:search])
	end
	
	private

	  def search_params
	    params.require(:search).permit(:make, :model, :color, :year)
	  end

end
