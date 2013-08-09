class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])  
  end

  #def timeline
  #	@user = User.data.find(params[:id])
	#end

end