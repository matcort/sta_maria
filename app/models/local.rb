class Local < ApplicationRecord
    has_many :contrato
    has_many :arrendatario, :through => :contrato
    
end
