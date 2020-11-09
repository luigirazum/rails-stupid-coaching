class QuestionsController < ApplicationController
  def ask
    
  end

  def answer
    if params[:question]
      @question = params[:question]

      if "i am going to work".eql?(@question.downcase)
        @answer = "Great!"
      elsif @question.include? "?"
        @answer = "Silly question, get dressed and go to work!."
      else
        @answer = "I don't care, get dressed and go to work!" 
      end
    end
  end
  
end
