class QuestionsController < ApplicationController
  
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
