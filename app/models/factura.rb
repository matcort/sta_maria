class Factura < ApplicationRecord
    has_many :gasto
    has_one :local, :through => :gasto
    
end
