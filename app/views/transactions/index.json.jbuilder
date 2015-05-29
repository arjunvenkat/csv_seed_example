json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :street, :city, :zip, :state, :beds, :sq_feet, :category, :sale_date, :price, :lat, :lng
  json.url transaction_url(transaction, format: :json)
end
