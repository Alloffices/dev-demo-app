class WelcomeController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@posts = Post.all.order("created_at desc")
		@devtools = Devtool.all.order("created_at desc")
	end
end
