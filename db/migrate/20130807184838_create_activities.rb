class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :count
      t.integer :calories_burned

      t.timestamps
    end
  end
end
