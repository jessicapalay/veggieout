class RelaxationsController < ApplicationController
  def create
  	relaxation = Relaxation.new(params[:relaxation])
  	relaxation.save!

  	redirect_to user_path
  end
end