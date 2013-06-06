class Post < ActiveRecord::Base
  has_many :tagclouds
  has_many :tags, :through => :tagclouds
  validates :content, :presence => true
  validates :title, :presence => true
end
