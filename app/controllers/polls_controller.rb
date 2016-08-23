class PollsController < ApplicationController

  def index
  	@poll = Poll.all
  end

end
