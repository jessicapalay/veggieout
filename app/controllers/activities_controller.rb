class ActivitiesController < ApplicationController
  def create
  	activity = current_user.activities.new(params[:activity])
  	activity.save!

  	redirect_to user_path(current_user)
  end
end