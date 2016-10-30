json.extract! post, :id, :title, :slug, :content, :created_at, :updated_at
json.url post_url(post, format: :json)