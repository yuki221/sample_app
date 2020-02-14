class Post < ApplicationRecord
  acts_as_taggable
  acts_as_taggable_on :labels

  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  attachment :image

  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
end
