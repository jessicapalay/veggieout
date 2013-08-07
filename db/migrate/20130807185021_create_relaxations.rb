class CreateRelaxations < ActiveRecord::Migration
  def change
    create_table :relaxations do |t|
      t.string :name
      t.integer :count

      t.timestamps
    end
  end
end
