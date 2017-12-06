class CreateLocals < ActiveRecord::Migration[5.1]
  def change
    create_table :locals do |t|
      t.string :direccion
      t.integer :numero
      t.text :comentarios
      t.boolean :estadoArriendo

      t.timestamps
    end
  end
end
