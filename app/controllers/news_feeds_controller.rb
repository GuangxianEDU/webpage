class NewsFeedsController < ApplicationController
	before_filter :check_auth
	def new
	end

	def create
		@news_feed = New.new(news_feed_params)
		@news_feed.save
		redirect_to @news_feed
	end

	def show
		@newsfeed = NewsFeeds.find(params[:id])
	end

	def index
		@news_feeds = New.all
	end

	private
		def new_feed_params
			params.require(:news_feed).permit(:title, :content)
		end

end
