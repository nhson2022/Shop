json.extract! product, :id, :title, :avatar, :description, :active, :quantity, :price, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
