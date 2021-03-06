class Book < ApplicationRecord
	belongs_to :user
	has_many :favorites
	has_many :favorited_users, through: :favorites, source: :user
	has_many :comments
	validates :title,presence: true
	validates :body,presence: true,length: {maximum:200}
end
