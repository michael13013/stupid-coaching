class CoachingController < ApplicationController
  def ask

  end

  def answer
    @query = params[:query]
    @reponse = coach_answer(@query)
  end

  def coach_answer(your_message)
    if your_message == nil
      "Give me a question !"
    elsif your_message.downcase == "i am going to work right now!"
      ''
    elsif your_message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end


