json.array!(@distances) do |distance|
  json.extract! distance, :id, :name
  json.url distance_url(distance, format: :json)
end
