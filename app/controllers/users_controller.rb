class UsersController < ApplicationController

	def profile
		@user = current_user.fullname
	end

	# def create
	# @user = User.new(params[:user]) 
	# 	if @user.save
	# 		current_user @user
	# 		flash[:success] = "Welcome to the Sample App!" redirect to @user
	# 	else
	# 		render 'new' 
	# 	end
	# end
end
