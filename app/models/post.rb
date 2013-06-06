class Post < ActiveRecord::Base
  belongs_to :user
  has_many :tagclouds
  has_many :tags, :through => :tagclouds
  validates :content, :presence => true
  validates :title, :presence => true

  before_save :tag_it

  def tag_names
    @tag_names
  end

  def tag_names=(tag_names)
    @tag_names = tag_names
  end

  private
  def tag_it
    tags = @tag_names.split(',')
    all_tags = tags.map { |tag| Tag.find_or_create_by_name(tag) }
    self.tag_ids = all_tags.map(&:id)
  end
end
