class Contrato < ApplicationRecord
  belongs_to :arrendatario
  belongs_to :administrador
  belongs_to :local
end
