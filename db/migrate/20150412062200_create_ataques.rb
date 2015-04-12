class CreateAtaques < ActiveRecord::Migration
  def change
    create_table :ataques do |t|
      t.string :tipo
      t.string :nombre
      t.integer :daño
      t.reference :arma
      t.string :personaje

      t.timestamps null: false
    end
  end
end
