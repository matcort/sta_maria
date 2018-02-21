class Gasto < ApplicationRecord
  belongs_to :local
  belongs_to :factura, optional: true
end
