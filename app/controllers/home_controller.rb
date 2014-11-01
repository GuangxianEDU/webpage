class HomeController < ApplicationController
  def home
    @title = "主页"
  end

  def about
    @title = "公司简介"
  end

  def team
    @title = "核心团队"
    @members = Member.all
  end

  def info
    @title = "我们的优势"
  end

  def contact
    @title = "联系我们"
  end

  def fuwu
    @title = "广贤学舍-服务范围"
  end

  def quxiang
    @title = "广贤学舍-学生去向"
  end

  def anli
    @title = "广贤学舍-成功案例"
  end

  def xuezhi
    @title = "广贤学舍-2+2学制"
  end

  def fuhua
    @title = "名校孵化器"
  end

  def mingxiaofuwu
    @title = "名校孵化器-服务范围"
  end

  def mingxiaoanli
    @title = "名校孵化器-典型案例"
  end

  def mingxiaoyoushi
    @title = "名校孵化器-我们的优势"
  end

  def admin
		if session[:user_id]
			@user = User.find_by_id(session[:user_id])
		else
			redirect_to root_url
		end
  end
end
