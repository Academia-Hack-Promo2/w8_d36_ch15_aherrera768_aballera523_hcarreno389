class CreateArmors < ActiveRecord::Migration
  def change
    create_table :armors do |t|
      t.string :type
      t.string :name
      t.string :character
      t.integer :defense
      t.integer :damage

      t.timestamps null: false
    end
  end
end
