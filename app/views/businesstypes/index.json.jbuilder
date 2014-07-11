json.array!(@businesstypes) do |businesstype|
  json.extract! businesstype, :id, :name
  json.url businesstype_url(businesstype, format: :json)
end
