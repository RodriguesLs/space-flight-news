require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe 'GET #index' do
    before { get :index }

    it { expect(response).to have_http_status(:ok) }
    it { expect(json_page['message']).to eq('Back-end Challenge 2021 🏅 - Space Flight News') }
  end  
end
