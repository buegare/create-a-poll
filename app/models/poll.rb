class Poll < ApplicationRecord
	extend FriendlyId

	belongs_to :user
	has_many :questions, dependent: :destroy

	validates :title, presence: true, length: { minimum: 3, maximum: 150 }
  	

  	friendly_id :title, use: :slugged

	def self.find_polls(user_id)
		where("user_id = ?",  user_id).order(created_at: :desc)
	end
end
