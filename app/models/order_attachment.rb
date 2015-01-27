class OrderAttachment < ActiveRecord::Base
  mount_uploader :document, DocumentUploader
  belongs_to :order
end
