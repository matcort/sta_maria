class AddMontoToLocal < ActiveRecord::Migration[5.1]
  def change
    add_column :locals, :monto, :integer
  end
end
