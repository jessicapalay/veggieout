class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])  
    @vegetables = current_user.vegetables.where("created_at > ?", Time.now.beginning_of_day)
    @fruits = current_user.fruits .where("created_at > ?", Time.now.beginning_of_day)
    @activities = current_user.activities .where("created_at > ?", Time.now.beginning_of_day)
    @relaxations = current_user.relaxations .where("created_at > ?", Time.now.beginning_of_day)
    @sleeps = current_user.sleeps .where("created_at > ?", Time.now.beginning_of_day)
  end

  def index
  	@users = User.all
  end

  def data
  	render json: current_user.summary_data(interval: params[:interval]).to_json
  end

end