json.extract! cart, :id, :quantity, :money, :product_id, :user_id, :created_at, :updated_at
json.url cart_url(cart, format: :json)
