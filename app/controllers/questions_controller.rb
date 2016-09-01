class QuestionsController < ApplicationController
  before_action :authenticate_user!, :except => [:update]

  def update 
  	if params[:answer]
  		@question = Question.find(params[:answer])
  		@question.votes += 1
  		if @question.save
  			flash[:success] = "Thank you for voting!"
  			redirect_to poll_path(@question.poll)
  		else
  			flash[:danger] = "Your vote could not been computed!"
  			redirect_to poll_path(@question.poll)
  		end
   	end
  end

  private

  def question_params
      params.require(:question).permit(:votes)
  end

end
