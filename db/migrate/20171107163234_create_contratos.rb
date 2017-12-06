class CreateContratos < ActiveRecord::Migration[5.1]
  def change
    create_table :contratos do |t|
      t.date :fechaInicio
      t.date :fechaFin
      t.integer :montoArriendo
      t.string :documento
      t.boolean :estado
      t.references :arrendatario, foreign_key: true
      t.references :administrador, foreign_key: true
      t.references :local, foreign_key: true

      t.timestamps
    end
  end
end
