# frozen_string_literal: true

# Controller responsible for handling pages related to asking and answering questions
class PagesController < ApplicationController
  def ask
    @question = params[:question]
    @answer = ''
  end

  def answer
    question = params[:question]

    @answer = if question.present?
                if question == 'I am going to work'
                  'Great!'
                elsif question.ends_with?('?')
                  'Silly question, get dressed and go to work!'
                else
                  "I don't care, get dressed and go to work!"
                end
              else
                'Please ask a question.'
              end
  end
end
