json.extract! purchase, :id, :user_id, :book_id, :quantity, :date, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)