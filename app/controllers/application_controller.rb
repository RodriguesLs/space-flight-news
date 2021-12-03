# frozen_string_literal: true

class ApplicationController < ActionController::API
  def index
    render json: { message: 'Back-end Challenge 2021 🏅 - Space Flight News' }
  end
end
