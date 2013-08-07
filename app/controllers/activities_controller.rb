class ActivitiesController < ApplicationController
  def create
  	activity = Activity.new(params[:activity])
  	activity.save!

  	redirect_to user_show_path
  end
end