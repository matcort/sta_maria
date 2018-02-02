module LocalsHelper
    def local_arrendatario(id)
        @nombre=""
        if Contrato.where(local: id, estado: true).present?
            @nombre=Contrato.where(local: id, estado: true).select(:arrendatario_id).first.arrendatario.nombre
        end
        @nombre
    end
end
