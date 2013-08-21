class VegetablesController < ApplicationController
  # POST /vegetables => VegetablesController#create
  def create
  	vegetable = current_user.vegetables.new(params[:vegetable])
  	vegetable.save!

  	redirect_to user_path(current_user)
  end
end
