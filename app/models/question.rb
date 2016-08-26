class Question < ApplicationRecord
	belongs_to :poll

	def self.compute_vote(question_id)
		question = Question.find_by(id: question_id)
		question.votes += 1
		question.save
	end
end
