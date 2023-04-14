json.extract! pcart, :id, :user_id, :product_id, :quantity, :size, :created_at, :updated_at
json.url pcart_url(pcart, format: :json)
