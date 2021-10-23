json.extract! product, :id, :name, :created_at, :updated_at
json.url restaurant_url(product format: :json)