json.extract! review, :id, :user_id, :book_id, :rate, :rev_text, :rev_date, :created_at, :updated_at
json.url review_url(review, format: :json)