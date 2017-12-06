json.extract! gasto, :id, :tipo, :nombre, :comentario, :local_id, :factura_id, :created_at, :updated_at
json.url gasto_url(gasto, format: :json)
