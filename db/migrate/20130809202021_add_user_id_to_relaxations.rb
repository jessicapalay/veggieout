class AddUserIdToRelaxations < ActiveRecord::Migration
  def change
  	add_column :relaxations, :user_id, :integer
  end
end
