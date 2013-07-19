class Post < ActiveRecord::Base
  has_many :tags , through: :posts_tags
  has_many :posts_tags

  validates :title, :body, presence: true 
  # validates :body, presence: true
  # validates_presence_of :title, :body
end
