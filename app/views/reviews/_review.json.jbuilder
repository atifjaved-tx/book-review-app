json.extract! review, :id, :name, :body, :created_at, :updated_at
json.url review_url(review, format: :json)
