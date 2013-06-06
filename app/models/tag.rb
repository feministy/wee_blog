class Tag < ActiveRecord::Base
  has_many :tagclouds, :dependent => :destroy
  has_many :posts, :through => :tagclouds
  validates :name, :presence => true
end
