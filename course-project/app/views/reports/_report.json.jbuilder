json.extract! report, :id, :text, :user_id, :post_id, :created_at, :updated_at
json.url report_url(report, format: :json)
