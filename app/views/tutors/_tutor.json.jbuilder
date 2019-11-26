json.extract! tutor, :id, :name, :subject, :price, :about, :image_url, :username, :created_at, :updated_at
json.url tutor_url(tutor, format: :json)
