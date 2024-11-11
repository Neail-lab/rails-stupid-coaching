class QuestionsController < ApplicationController

  def ask
  end

  def answer
      @response = 'xx'
      @question = params[:question]
      @file = ''

      if @question == 'I am going to work'
        @response = 'Great!.'
        @file = 'https://i.giphy.com/o75ajIFH0QnQC3nCeD.webp'
      elsif @question.include?('?')
        @response = 'Silly question, get dressed and go to work!.'
        @file = 'https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExb2tlbzUxMTZkcXlxNDJoMjFseDdsbjVqdGtqbnoxZDhnY3Q2NHF4cyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/iD9cm5ZRKnVO0GkOdH/giphy.webp'
      else
        @response = "I don't care, get dressed and go to work!"
        @file = 'https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExbGQwbW90d201bjhzOHdzMHlzMWNsd3RpNHRrbzY3YzF3Nm94Nm1kdiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/W3Ch3vjHi5FGefDT0G/giphy.webp'
      end
      # case @question
      # when @question == 'I am going to work'
      #   @response = 'Great!.'
      # when @question.include?('?')
      #   @response = 'Silly question, get dressed and go to work!.'
      # else
      #   @response = "I don't care, get dressed and go to work!"
      # end
  end
end
