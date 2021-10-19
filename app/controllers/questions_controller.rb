class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @message = params[:question]
    if @message.downcase == "I am going to work".downcase
      @answer = 'Great!'
    elsif @message.include? '?'
      @answer =  'Silly question, get dressed and go to work!'
    else
      @answer =  "I don't care, get dressed and go to work!"
    end
  end
end
