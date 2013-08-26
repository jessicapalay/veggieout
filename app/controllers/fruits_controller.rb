class FruitsController < ApplicationController
  def create
  	fruit = current_user.fruits.new(params[:fruit])
  	fruit.save!

  	redirect_to user_path(current_user)
  end
end

