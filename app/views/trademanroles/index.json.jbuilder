json.array!(@trademanroles) do |trademanrole|
  json.extract! trademanrole, :id, :name
  json.url trademanrole_url(trademanrole, format: :json)
end
