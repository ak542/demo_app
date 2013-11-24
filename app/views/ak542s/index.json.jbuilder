json.array!(@ak542s) do |ak542|
  json.extract! ak542, :name, :email
  json.url ak542_url(ak542, format: :json)
end