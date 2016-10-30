class User < ApplicationRecord

  devise :database_authenticatable, :rememberable, :trackable, :validatable

  has_many :posts

end
