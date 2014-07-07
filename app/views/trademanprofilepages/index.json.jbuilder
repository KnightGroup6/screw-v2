json.array!(@trademanprofilepages) do |trademanprofilepage|
  json.extract! trademanprofilepage, :id, :name, :content, :ancestry
  json.url trademanprofilepage_url(trademanprofilepage, format: :json)
end
