json.array!(@accounts) do |account|
  json.extract! account, :accno, :plotno, :address, :area_id, :catagory_id, :property_value, :hecter, :description, :land_value, :improved, :TRV
  json.url account_url(account, format: :json)
end
