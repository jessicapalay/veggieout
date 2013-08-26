class RelaxationsController < ApplicationController
  def create
  	relaxation = current_user.relaxations.new(params[:relaxation])
  	relaxation.save!

  	redirect_to user_path(current_user)
  end
end