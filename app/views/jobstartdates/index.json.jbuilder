json.array!(@jobstartdates) do |jobstartdate|
  json.extract! jobstartdate, :id, :name
  json.url jobstartdate_url(jobstartdate, format: :json)
end
