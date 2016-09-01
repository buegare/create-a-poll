class Poll < ApplicationRecord
	extend FriendlyId
	require 'securerandom'

	before_save :save_random_string_on_instance

	belongs_to :user
	has_many :questions, dependent: :destroy

	validates :title, presence: true, length: { minimum: 3, maximum: 150 }
  	
  	friendly_id :random_string

	def self.find_polls(user_id)
		where("user_id = ?",  user_id).order(created_at: :desc)
	end

	def save_random_string_on_instance()
		need_to_generate_new_random_string = true
		while need_to_generate_new_random_string do
			new_random_string = SecureRandom.hex(8)
			found_random_string_on_database = Poll.where("random_string = ?",  new_random_string).first
			if !found_random_string_on_database
				self.random_string = new_random_string
				need_to_generate_new_random_string = false
			end
		end
	end

end
