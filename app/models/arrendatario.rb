class Arrendatario < ApplicationRecord
      has_secure_password
      has_many :contrato
      has_many :local, :through => :contrato
end
