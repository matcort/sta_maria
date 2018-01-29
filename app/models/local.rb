class Local < ApplicationRecord
    has_one :contrato
    has_one :arrendatario, :through => :contrato
    
end
