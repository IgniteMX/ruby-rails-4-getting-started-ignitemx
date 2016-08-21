class Question < ActiveRecord::Base

    include Gravatar
    
    has_many :answers

end
