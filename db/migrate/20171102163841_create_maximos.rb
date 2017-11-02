class CreateMaximos < ActiveRecord::Migration[5.1]
  def change
    create_table :maximos do |t|
      t.string :juego
      t.integer :puntaje

      t.timestamps
    end
  end
end
