json.array!(@expirees) do |expiree|
  json.extract! expiree, :id, :name, :score
  json.url expiree_url(expiree, format: :json)
end
