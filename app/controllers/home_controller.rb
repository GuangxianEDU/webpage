class HomeController < ApplicationController
  def about
  end

  def team
  end

  def info
  end

  def contact
  end

  def admin
		if session[:user_id]
			@user = User.find_by_id(session[:user_id])
		else
			redirect_to root_url
		end
  end
end
