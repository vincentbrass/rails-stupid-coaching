class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:user_input]
    if @input.blank?
      @coach_answer = 'Hello, what is your question?'
    elsif @input == 'I am going to work'
      @coach_answer = 'Great!'
    elsif @input.end_with?("?")
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
