json.extract! arrendatario, :id, :nombre, :rut, :telefono, :mail, :password_digest, :created_at, :updated_at
json.url arrendatario_url(arrendatario, format: :json)
