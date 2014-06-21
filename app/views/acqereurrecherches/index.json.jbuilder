json.array!(@acqereurrecherches) do |acqereurrecherch|
  json.extract! acqereurrecherch, :id, :acquereur_id, :type_de_bien, :chambre
  json.url acqereurrecherch_url(acqereurrecherch, format: :json)
end
