json.extract! user, :id, :firstname, :lastname, :gender, :contact, :city, :address, :uid, :created_at, :updated_at
json.url user_url(user, format: :json)
