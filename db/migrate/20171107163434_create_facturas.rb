class CreateFacturas < ActiveRecord::Migration[5.1]
  def change
    create_table :facturas do |t|
      t.integer :nBoleta
      t.integer :estado
      t.boolean :firmaAdmin
      t.boolean :firmaArrendatario
      t.date :fechaPago
      t.string :tipoPago

      t.timestamps
    end
  end
end
