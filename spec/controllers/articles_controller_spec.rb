require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'GET #index' do
    let!(:articles) { create_list(:article, 3) }

    before { get :index }

    it { is_expected.to be_truthy }
    it { expect(response).to have_http_status(:ok) }
    it { expect(json_page.count).to eq(articles.count) }
  end
end
