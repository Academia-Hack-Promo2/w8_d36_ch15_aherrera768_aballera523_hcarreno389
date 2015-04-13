class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :type
      t.string :name
      t.integer :damage
      t.integer :defense

      t.timestamps null: false
    end
  end
end
