class Local < ApplicationRecord
    has_many :contrato
    has_many :arrendatario, :through => :contrato
    
    has_many :gasto
    has_many :factura, :through => :gasto
    
    
end
