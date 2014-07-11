json.array!(@employeenumbers) do |employeenumber|
  json.extract! employeenumber, :id, :name
  json.url employeenumber_url(employeenumber, format: :json)
end
