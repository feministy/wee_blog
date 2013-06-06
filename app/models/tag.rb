class Tag < ActiveRecord::Base
  has_many :posts, :through => :tagclouds
  validates :name, :presence => true
end
