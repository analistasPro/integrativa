json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :apellido, :fechanav, :correo
  json.url usuario_url(usuario, format: :json)
end
