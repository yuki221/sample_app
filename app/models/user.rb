class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable, :omniauthable, omniauth_providers: [:twitter]


attachment :image
has_many :posts, dependent: :destroy

has_many :likes, dependent: :destroy
has_many :liked_posts, through: :likes, source: :post

  def already_liked?(post)
    likes.exists?(post_id: post.id)
  end

end
