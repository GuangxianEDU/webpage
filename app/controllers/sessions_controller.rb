class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_email(params[:email])
	  if user && user.authenticate(params[:password])
	    session[:user_id] = user.id
	    redirect_to '/admin'
			flash[:notice] = "login in"
	  else
	    flash[:warning] = 'Invalid email or password'
      render 'new'
	  end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url
		flash[:notice] = 'logout'
	end
end
