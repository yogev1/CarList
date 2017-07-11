class User < ActiveRecord::Base
  # users.password_hash in the database is a :string
  has_secure_password
  
  def authenticate_user!(opts={})
  	opts[:scope] = :user
  	warden.authenticate!(opts) if !devise_controller? || opts.delete(:force)
  end

end
