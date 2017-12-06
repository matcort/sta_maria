json.extract! factura, :id, :nBoleta, :estado, :firmaAdmin, :firmaArrendatario, :fechaPago, :tipoPago, :created_at, :updated_at
json.url factura_url(factura, format: :json)
