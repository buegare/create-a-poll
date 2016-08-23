class PollsController < ApplicationController
	before_action :set_poll, only: [:show, :destroy, :update ]


  def index
  	@polls = Poll.where("user_id = ?",  current_user.id)
  end

  def new
  	@poll = Poll.new
  end

  def show; end

  def create	
	respond_to do |format|
		format.js
	end
  end

  private
    
    def set_poll
      @poll = Poll.find(params[:id])
    end

end
