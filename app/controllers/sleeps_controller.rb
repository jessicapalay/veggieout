class SleepsController < ApplicationController
  def create
  	sleep = current_user.sleeps.new(params[:sleep])
  	sleep.save!

  	redirect_to user_path(current_user)
  end
end