class AnswersController < ApplicationController
    
    def show
        @answer = Answer.find(params[:id])
    end

    def create
        question = Question.find(params[:answer][:question_id])
        session[:current_user_email] = answer_params[:email]
        question.answers.create(answer_params)
        redirect_to question
    end
    
    private
    
    def answer_params
        params.require(:answer).permit(:email, :body)
    end
    
end
