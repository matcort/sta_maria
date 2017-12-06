class CreateAdministradors < ActiveRecord::Migration[5.1]
  def change
    create_table :administradors do |t|
      t.string :nombre
      t.string :rut
      t.integer :telefono
      t.string :mail
      t.integer :jer
      t.string :password_digest

      t.timestamps
    end
  end
end
