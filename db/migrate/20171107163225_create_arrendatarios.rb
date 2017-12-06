class CreateArrendatarios < ActiveRecord::Migration[5.1]
  def change
    create_table :arrendatarios do |t|
      t.string :nombre
      t.string :rut
      t.integer :telefono
      t.string :mail
      t.string :password_digest

      t.timestamps
    end
  end
end
