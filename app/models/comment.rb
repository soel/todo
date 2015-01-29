class Comment < ActiveRecord::Base
  belongs_to :users
  belongs_to :orders
  
  has_many :commentattachments
  accepts_nested_attributes_for :commentattachments
end
