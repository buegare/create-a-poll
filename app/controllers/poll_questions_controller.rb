class PollQuestionsController < ApplicationController
  def new
  	@poll = Poll.new
  end
end
