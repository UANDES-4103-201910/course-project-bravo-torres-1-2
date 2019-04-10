json.extract! liked_post, :id, :creation_date, :post_id, :user_id, :created_at, :updated_at
json.url liked_post_url(liked_post, format: :json)
