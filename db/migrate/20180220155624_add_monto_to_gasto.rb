class AddMontoToGasto < ActiveRecord::Migration[5.1]
  def change
    add_column :gastos, :monto, :integer
  end
end
