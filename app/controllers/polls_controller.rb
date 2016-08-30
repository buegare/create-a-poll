class PollsController < ApplicationController
	before_action :set_poll, only: [:show, :destroy, :update ]

  def index
  	@polls = Poll.find_polls(current_user.id)
  end

  def show; end

  def new
  	@poll = Poll.new
  end

  def create
  	@poll = current_user.polls.new(title: params[:poll_title_param])
  	clean_arr = params[:answer_title_param].reject { |item| item.blank? }

  	if clean_arr.size < 2
  		flash[:danger] = "There must be at least 2 answers filled up"
		render 'new'
	elsif @poll.save
		clean_arr.each do |i|
	   		@poll.questions.create(title: "#{i}", votes: 0)
		end
		flash[:success] = "New poll created successfuly!"
		redirect_to poll_path(@poll)
	else
		render 'new'
	end
  
  end

  private
    
    def set_poll
      @poll = Poll.find(params[:id])
    end

	def question_params
	    params.require(:poll).permit(:votes, :title)
	end

end
