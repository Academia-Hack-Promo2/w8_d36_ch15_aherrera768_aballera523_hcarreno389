class CreateArmas < ActiveRecord::Migration
  def change
    create_table :armas do |t|
      t.string :tipo
      t.string :nombre
      t.integer :daño
      t.integer :defensa

      t.timestamps null: false
    end
  end
end
