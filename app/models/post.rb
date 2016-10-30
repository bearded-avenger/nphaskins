class Post < ApplicationRecord

	extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  belongs_to :user

	validates_presence_of :title, :content, :slug
end
