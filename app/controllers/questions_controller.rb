class QuestionsController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer(@question)
  end

  def ask
  end

  private

  def coach_answer(question)
    if question == ''
      "Silent, are you? Go back to work!"
    elsif question == question.upcase
      "DON'T YOU YELL AT ME!"
    elsif question[-1] == '?'
      "Silly question, son..."
    else
      "I don't care my boy!"
    end
  end
end
