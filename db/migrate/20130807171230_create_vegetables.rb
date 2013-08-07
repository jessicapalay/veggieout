class CreateVegetables < ActiveRecord::Migration
  def change
    create_table :vegetables do |t|
      t.string :name
      t.integer :count

      t.timestamps
    end
  end
end
