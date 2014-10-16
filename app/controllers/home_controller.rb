class HomeController < ApplicationController
  def home
  end

  def about
  end

  def team
  end

  def info
  end

  def contact
  end

  def fuwu
  end

  def quxiang
  end

  def anli
  end

  def xuezhi
  end

  def fuhua
  end

  def mingxiaofuwu
  end

  def mingxiaoanli
  end

  def mingxiaoyoushi
  end

  def admin
		if session[:user_id]
			@user = User.find_by_id(session[:user_id])
		else
			redirect_to root_url
		end
  end
end
