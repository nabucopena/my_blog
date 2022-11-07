class Post < ApplicationRecord
  belongs_to :user
  belongs_to :post, optional: true
  belongs_to :main_post, class_name: 'Post'
  has_many :posts
  has_many :descendants, foreign_key: 'main_post_id', class_name: 'Post'
end
