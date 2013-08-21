class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])  
    @vegetables = current_user.vegetables.where("created_at > ?", Time.now.beginning_of_day)
  end

  def data
  	render json: current_user.summary_data(interval: params[:interval]).to_json
  end

end