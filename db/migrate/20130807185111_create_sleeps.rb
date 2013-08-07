class CreateSleeps < ActiveRecord::Migration
  def change
    create_table :sleeps do |t|
      t.integer :count

      t.timestamps
    end
  end
end
