json.array!(@applications) do |application|
  json.extract! application, :id, :firstname, :lastname, :phone, :email
  json.url application_url(application, format: :json)
end
