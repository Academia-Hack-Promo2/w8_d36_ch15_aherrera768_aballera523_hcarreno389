class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :type
      t.integer :age
      t.integer :vitality
      t.integer :life_points
      t.references :weapon, index: true, foreign_key: true
      t.references :armor, index: true, foreign_key: true
      t.string :skill
      t.integer :level
      t.integer :defense_points
      t.integer :attack_points
      t.text :attacks

      t.timestamps null: false
    end
  end
end
