class Post < ApplicationRecord
  acts_as_taggable
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  attachment :image
end
