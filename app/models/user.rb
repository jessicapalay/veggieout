class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :avatar
  # attr_accessible :title, :body
  mount_uploader :avatar, AvatarUploader

  def last_weeks_vegetable_data
  	[Vegetable.count, 3, 1, 4, 10]
  end
end
