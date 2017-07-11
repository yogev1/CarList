class SessionsController < ApplicationController
  before_action :verify_authenticity_token

  def new
  end

  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password]) && user.name == params[:name]
  		session[:user_id] = user.id
  		redirect_to root_path
  	else 
  		redirect_to root_path, notice: 'Your credintials do not fit our records, Please sign up or try again'
  	end	
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path    
  end

end
