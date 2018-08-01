json.extract! comment, :id, :task_id, :user_id, :ctext, :active, :created_at, :updated_at
json.url comment_url(comment, format: :json)
