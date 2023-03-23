json.extract! payment, :id, :paid, :cart_id, :user_id, :address_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
