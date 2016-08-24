class PollsController < ApplicationController
	before_action :set_poll, only: [:show, :destroy, :update ]


  def index
  	@polls = Poll.find_polls(current_user.id)
  end

  def show; end

  def create
  	puts params[:poll_title_param]
  	@poll = current_user.polls.new(title: params[:poll_title_param])
   	if @poll.save
  	  	params[:answer_title_param].each do |i|
	   		@poll.questions.create(title: "#{i}", votes: 0)
		end

		respond_to do |format|
			format.js
		end
	end
  
  end

  private
    
    def set_poll
      @poll = Poll.find(params[:id])
    end

end
