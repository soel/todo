class Group < ActiveRecord::Base
  has_and_belongs_to_many :grmails
  has_and_belongs_to_many :orders
end
