class Post < ActiveRecord::Base
  has_many :tags , through: :posts_tags
  has_many :posts_tags

  validates :title , presence: true , :body , presence: true
end
