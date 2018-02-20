class RemoveMontoToLocal < ActiveRecord::Migration[5.1]
  def change
    remove_column :locals, :monto, :integer
  end
end
