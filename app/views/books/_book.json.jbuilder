json.extract! book, :id, :isbn, :title, :author_id, :category, :description, :price, :photo, :created_at, :updated_at
json.url book_url(book, format: :json)