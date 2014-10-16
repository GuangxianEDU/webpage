class MembersController < ApplicationController
	before_action :check_auth
	def new
	end

	def create
		@member = Member.new(member_params)
		@member.save
		redirect_to @member
	end

	def show
		@member = Member.find(params[:id])
	end

	def index
		@members = Member.all
	end

	private
	  def member_params
	    params.require(:member).permit(:name, :title, :content)
	  end


end
