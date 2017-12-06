json.extract! contrato, :id, :fechaInicio, :fechaFin, :montoArriendo, :documento, :estado, :arrendatario_id, :administrador_id, :local_id, :created_at, :updated_at
json.url contrato_url(contrato, format: :json)
