class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])  
  end

  def data
  	render json: current_user.summary_data(interval: params[:interval].to_i).to_json
  end
  #def timeline
  #	@user = User.data.find(params[:id])
	#end

end