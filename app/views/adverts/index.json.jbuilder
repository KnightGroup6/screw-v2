json.array!(@adverts) do |advert|
  json.extract! advert, :id, :image, :title, :content
  json.url advert_url(advert, format: :json)
end
