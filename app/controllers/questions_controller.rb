class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question =params[:question]
    @answer = coach_answer_enhanced(@question)
  end

  def coach_answer_enhanced(question)
    @answer = ""
    upcase_question = @question.upcase
    if @question == "I AM GOING TO WORK RIGHT NOW!"
      @answer = "GOOD"
      return @answer
    elsif @question == "I am going to work right now!"
      @answer = "Good"
      return @answer
    elsif @question == upcase_question && @question.include?('?')
      @answer = "I can feel your motivation! Silly question, get dressed and go to work!"
      return @answer
      return
    elsif @question.include?('?')
      @answer = "Silly question, get dressed and go to work!"
      return @answer
    elsif @question == upcase_question
      @answer = "I can feel your motivation! I don't care, get dressed and go to work!"
      return @answer
    else
      @answer = "I don't care, get dressed and go to work!"
      return @answer
    end
  end
end
