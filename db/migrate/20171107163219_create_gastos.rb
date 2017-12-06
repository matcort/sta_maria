class CreateGastos < ActiveRecord::Migration[5.1]
  def change
    create_table :gastos do |t|
      t.integer :tipo
      t.string :nombre
      t.text :comentario
      t.references :local, foreign_key: true
      t.references :factura, foreign_key: true

      t.timestamps
    end
  end
end
