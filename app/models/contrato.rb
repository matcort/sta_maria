class EstadoValidator < ActiveModel::Validator
  def validate(record)
    if record.estado == true 
      if Contrato.where(estado:true, local_id: record.local_id).count >= 1 
        record.errors[:base] << "Ya existe un contrato vigente en este local" 
      end
      
    end
  end
end

class Contrato < ApplicationRecord
  
  belongs_to :arrendatario
  belongs_to :administrador
  belongs_to :local
  
  
    validates_presence_of :fechaFin, :documento, :arrendatario_id, :administrador_id, :local_id, :montoArriendo, :fechaInicio
    validates_inclusion_of :estado, :in => [true, false]
    validates_with EstadoValidator, fields: [:estado, :local_id], on: [:create]
    
    after_commit on: [:create, :update] do
      Local.find(self.local.id).update(estadoArriendo: (self.estado)? true : false)
    end
   
    after_destroy do
       Local.find(self.local.id).update(estadoArriendo: false)
   end

end



 