class SleepsController < ApplicationController
  def create
  	sleep = Sleep.new(params[:sleep])
  	sleep.save!

  	redirect_to user_path(current_user)
  end
end