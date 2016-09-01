class QuestionsController < ApplicationController
  before_action :authenticate_user!, :except => [:update]

  def update 
  	if params[:answer]
  		Question.compute_vote(params[:answer])
   	end
  end

  private

  def question_params
      params.require(:question).permit(:votes)
  end

end
