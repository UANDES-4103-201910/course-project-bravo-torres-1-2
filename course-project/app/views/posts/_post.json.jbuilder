json.extract! post, :id, :creation_date, :text, :title, :user_id, :geofence_id, :apropriated, :is_open, :is_solved, :share_counter, :report_counter, :is_hidden, :is_linked, :file_attachment, :created_at, :updated_at
json.url post_url(post, format: :json)
