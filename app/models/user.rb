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

  has_many :vegetables
  has_many :fruits
  has_many :activities
  has_many :relaxations
  has_many :sleeps

  def last_weeks_vegetable_data
    7.downto(1).map do |i|
      vegetables.where("created_at > ? AND created_at < ?", i.days.ago.beginning_of_day, i.days.ago.end_of_day).count
    end
  end

  def last_weeks_fruit_data
    7.downto(1).map do |i|
      fruits.where("created_at > ? AND created_at < ?", i.days.ago.beginning_of_day, i.days.ago.end_of_day).count
    end
  end

  def last_weeks_activity_data
    7.downto(1).map do |i|
      activities.where("created_at > ? AND created_at < ?", i.days.ago.beginning_of_day, i.days.ago.end_of_day).count
    end
  end

  def last_weeks_relaxation_data
    7.downto(1).map do |i|
      relaxations.where("created_at > ? AND created_at < ?", i.days.ago.beginning_of_day, i.days.ago.end_of_day).count
    end
  end

  def last_weeks_sleep_data
    7.downto(1).map do |i|
      sleeps.where("created_at > ? AND created_at < ?", i.days.ago.beginning_of_day, i.days.ago.end_of_day).count
    end
  end

  def summary_data
      labels = 7.downto(1).map do |i|
        i.days.ago.strftime("%a")
      end

      {
        labels: labels,
        datasets: [
          {
            data: last_weeks_vegetable_data
          },
          {
            data: last_weeks_fruit_data
          },
          {
            data: last_weeks_activity_data
          },
          {
            data: last_weeks_relaxation_data
          },
          {
            data: last_weeks_sleep_data
          }
        ]
      }
      # {
      #   data: last_weeks_fruit_data
      # },
      # {
      #   data: last_weeks_activity_data
      # },
      # {
      #   data: last_weeks_relaxation_data
      # },
      # {
      #   data: last_weeks_sleep_data
      # }
  end
end
