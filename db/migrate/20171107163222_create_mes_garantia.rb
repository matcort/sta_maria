class CreateMesGarantia < ActiveRecord::Migration[5.1]
  def change
    create_table :mes_garantia do |t|
      t.date :fecha
      t.integer :monto
      t.references :local, foreign_key: true

      t.timestamps
    end
  end
end
