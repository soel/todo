class Commentattachment < ActiveRecord::Base
  mount_uploader :document, CommentUploader
  belongs_to :comment
end
