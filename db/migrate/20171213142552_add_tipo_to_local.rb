class AddTipoToLocal < ActiveRecord::Migration[5.1]
  def change
    add_column :locals, :tipo, :string
  end
end
