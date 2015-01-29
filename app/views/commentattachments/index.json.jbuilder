json.array!(@commentattachments) do |commentattachment|
  json.extract! commentattachment, :id, :comment_id, :document
  json.url commentattachment_url(commentattachment, format: :json)
end
