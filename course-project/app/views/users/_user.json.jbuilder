json.extract! user, :id, :email, :name, :lastname, :password, :address, :phone, :profile, :is_suspended, :has_prev_suspension, :is_blocked, :geofence_id, :created_at, :updated_at
json.url user_url(user, format: :json)
