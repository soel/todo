json.array!(@grmails) do |grmail|
  json.extract! grmail, :id, :email
  json.url grmail_url(grmail, format: :json)
end
