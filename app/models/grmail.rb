class Grmail < ActiveRecord::Base
  has_and_belongs_to_many :groups
  
  has_many :orders, through: :groups
end
