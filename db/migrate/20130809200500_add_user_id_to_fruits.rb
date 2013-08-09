class AddUserIdToFruits < ActiveRecord::Migration
  def change
  	add_column :fruits, :user_id, :integer
  end
end
