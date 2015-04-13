class CreateAttacks < ActiveRecord::Migration
  def change
    create_table :attacks do |t|
      t.string :type
      t.string :name
      t.integer :damage
      t.references :weapon, index: true, foreign_key: true
      t.string :character

      t.timestamps null: false
    end
  end
end
