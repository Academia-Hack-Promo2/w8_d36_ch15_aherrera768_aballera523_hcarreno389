class CreatePersonajes < ActiveRecord::Migration
  def change
    create_table :personajes do |t|
      t.string :nombre
      t.string :tipo
      t.integer :edad
      t.integer :vitalidad
      t.integer :puntos_d_vida
      t.references :arma, index: true, foreign_key: true
      t.references :armadura, index: true, foreign_key: true
      t.string :habilidad
      t.integer :nivel
      t.integer :puntos_defensa
      t.integer :puntos_ataque
      t.text :ataques

      t.timestamps null: false
    end
  end
end
