require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'GET #index' do
    before { get :index }

    it { is_expected.to be_truthy }
    it { expect(response).to have_http_status(:ok) }
  end
end
