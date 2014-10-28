class ConsultsController < ApplicationController
	before_filter :check_auth
	def new
	end

	def create
		@consult = Consult.new(consult_params)
		@consult.save
		redirect_to @consult
	end

	def show
		@consult = Consult.find(params[:id])
	end

	def index
		@consults = Consult.all
	end

	private
		def consult_params
			params.require(:consult).permit(:title, :content)
		end
		
end
