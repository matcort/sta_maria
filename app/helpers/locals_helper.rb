module LocalsHelper
    def local_arrendatario_contrato(id)
       lac={}
        if Contrato.where(local: id, estado: true).present?
            @contract=Contrato.where(local: id, estado: true).select(:id, :arrendatario_id)#.first.arrendatario
             lac={
            :link_to_arrend => link_to(@contract.first.arrendatario.nombre, @contract.first.arrendatario),
            :local_active_contract => @contract.first.id
        }
        else
         lac={
            :link_to_arrend => "Sin Arrendatario/contrato",
            :local_active_contract => nil
        }
        end
       
        lac
    end
    
    def estadoContratoActivo(local, contractId)
        if contractId.nil?
            link_to "Nuevo Contrato", new_local_contrato_path(local), class: 'btn btn-info'
        else
            (local.estadoArriendo)? (link_to local_contrato_path(local.id, contractId), method: :delete, data: { confirm: t('.confirm', default: t("helpers.links.confirm", default: 'Are you sure?')) }, class: 'btn btn-xs', title: "#{ t('.destroy', default: t('helpers.links.destroy')) }") : (link_to "Nuevo Contrato", new_local_contrato_path(local), class: 'btn btn-info')
        end        
    end
    
end
