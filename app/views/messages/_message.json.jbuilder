json.extract! message, :id, :subject, :body, :username_from, :username_to, :user_id_from, :user_id_to, :created_at, :updated_at
json.url message_url(message, format: :json)
