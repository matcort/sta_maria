class Local < ApplicationRecord
    has_many :contrato
    has_many :arrendatario, :through => :contrato
    
    has_many :gasto
    has_many :factura, :through => :gasto
    
    def deuda
        # (factura pagada)? no mostrar : mostrar...
        self.gasto.where(factura_id: nil).pluck(:monto).sum
    end
    
end
