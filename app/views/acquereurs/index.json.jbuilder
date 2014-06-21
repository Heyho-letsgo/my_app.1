json.array!(@acquereurs) do |acquereur|
  json.extract! acquereur, :id, :prenom, :nom, :telephone, :email
  json.url acquereur_url(acquereur, format: :json)
end
