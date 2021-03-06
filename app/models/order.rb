class Order < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :groups
  has_many :comments
  
  has_many :order_attachments
  accepts_nested_attributes_for :order_attachments, allow_destroy: true
  
  has_many :grmails, through: :groups
end
