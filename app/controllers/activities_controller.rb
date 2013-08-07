class ActivitiesController < ApplicationController
  def create
  	activity = Activity.new(params[:activity])
  	activity.save!

  	redirect_to user_path
  end
end