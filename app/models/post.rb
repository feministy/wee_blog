class Post < ActiveRecord::Base
  belongs_to :user
  has_many :tagclouds, :dependent => :destroy
  has_many :tags, :through => :tagclouds
  validates_presence_of :content, :title, :user_id

  def user_name
    self.user.name
  end 

  def tag_names=(tags)
    array = tags.split(',')
    update_tag_ids_from(array)
  end 

  private
  def update_tag_ids_from(array)
    self.tag_ids = array.inject([]) do |a, tagstr| 
      a << Tag.find_or_create_by_name(tagstr).id
      a
    end 
  end 
end