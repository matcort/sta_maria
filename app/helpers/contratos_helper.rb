module ContratosHelper
    def arrendatarios_select
        @arrendatarios= Arrendatario.pluck( :nombre, :id).to_h
    end
end
