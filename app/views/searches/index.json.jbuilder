json.array!(@searches) do |search|
  json.extract! search, :id, :search
  json.url search_url(search, format: :json)
end
