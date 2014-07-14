json.array!(@images) do |image|
  json.extract! image, :id, :image, :title, :user_id
  json.url image_url(image, format: :json)
end
