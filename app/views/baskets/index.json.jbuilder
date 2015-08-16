json.array!(@baskets) do |basket|
  json.extract! basket, :id, :used_id, :product_id
  json.url basket_url(basket, format: :json)
end
