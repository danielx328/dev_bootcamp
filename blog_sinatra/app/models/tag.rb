class Tag < ActiveRecord::Base
  validates :name, :uniqueness => true
  validates :name, :presence => true

  has_many :posts_tags
  has_many :posts, :through => :posts_tags
end
