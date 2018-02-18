module LocalsHelper
   
        def link_to_arrend_contract(local)
            lac={}
            if local.estadoArriendo
                contract=local.contrato.find_by_estado(true)#.arrendatario
                
                lac={
                    :link_to_arrend => link_to(contract.arrendatario.nombre, contract.arrendatario),
                    :active_contract => (link_to "Ver contrato", local_contrato_path(local.id, contract),  class: 'btn btn-info')
                     
                }
            else
                lac={
                    :link_to_arrend => "Local Vacío",
                    :active_contract => (link_to "Nuevo Contrato", new_local_contrato_path(local), class: 'btn btn-info')
                }
            end
            
        end
        
        

end
