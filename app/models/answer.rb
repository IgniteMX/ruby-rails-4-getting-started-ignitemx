class Answer < ActiveRecord::Base

    include Gravatar
    
    belongs_to :question
    
    def create
        Answer.create(answer_params)
        redirect_to root_path
    end
    
    private
    
    def answer_params
        params.require(:answer).permit(:question_id, :email, :body)
    end
    
end
