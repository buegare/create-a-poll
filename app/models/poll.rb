class Poll < ApplicationRecord
	belongs_to :user
	has_many :questions, dependent: :destroy

	def self.find_polls(user_id)
		where("user_id = ?",  user_id).order(created_at: :desc)
	end
end
