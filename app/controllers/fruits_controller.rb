class FruitsController < ApplicationController
  def create
  	fruit = Fruit.new(params[:fruit])
  	fruit.save!

  	redirect_to user_show_path
  end
end