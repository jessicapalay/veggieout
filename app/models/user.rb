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

  def vegetable_data_from(days_ago)
    days_ago.downto(1).map do |i|
      vegetables.where("created_at > ? AND created_at < ?", i.days.ago.beginning_of_day, i.days.ago.end_of_day).count
    end
  end

  def fruit_data_from(days_ago)
    days_ago.downto(1).map do |i|
      fruits.where("created_at > ? AND created_at < ?", i.days.ago.beginning_of_day, i.days.ago.end_of_day).count
    end
  end

  def activity_data_from(days_ago)
    days_ago.downto(1).map do |i|
      activities.where("created_at > ? AND created_at < ?", i.days.ago.beginning_of_day, i.days.ago.end_of_day).count
    end
  end

  def relaxation_data_from(days_ago)
    days_ago.downto(1).map do |i|
      relaxations.where("created_at > ? AND created_at < ?", i.days.ago.beginning_of_day, i.days.ago.end_of_day).count
    end
  end

  def sleep_data_from(days_ago)
    days_ago.downto(1).map do |i|
      sleeps.where("created_at > ? AND created_at < ?", i.days.ago.beginning_of_day, i.days.ago.end_of_day).count
    end
  end

  def summary_data(options={})

      if options[:interval] == "week"
        labels = 7.downto(1).map do |i|
          i.days.ago.strftime("%a")
        end

        {
          labels: labels,
          datasets: [
            {
              data: vegetable_data_from(7)
            },
            {
              data: fruit_data_from(7)
            },
            {
              data: activity_data_from(7)
            },
            {
              data: relaxation_data_from(7)
            },
            {
              data: sleep_data_from(7)
            }
          ]
        }
      elsif options[:interval] == "month"
        labels = 30.downto(1).map do |i|
            i.days.ago.strftime("%a")
          end

          {
            labels: labels,
            datasets: [
              {
                data: vegetable_data_from(30)
              },
              {
                data: fruit_data_from(30)
              },
              {
                data: activity_data_from(30)
              },
              {
                data: relaxation_data_from(30)
              },
              {
                data: sleep_data_from(30)
              }
            ]
          }
      end
  end
end
