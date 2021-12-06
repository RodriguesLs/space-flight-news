require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'GET #index' do
    let!(:articles) { create_list(:article, 3) }

    before { get :index }

    it { is_expected.to be_truthy }
    it { expect(response).to have_http_status(:ok) }
    it { expect(json_page.count).to eq(articles.count) }
  end

  describe 'GET #show' do
    let!(:article) { create(:article) }

    before { get :show, params: { id: article.id } }

    it { expect(response).to have_http_status(:ok) }

    it 'returns same values' do
      expect(json_page['title']).to eq(article.title)
      expect(json_page['url']).to eq(article.url)
      expect(json_page['featured']).to eq(article.featured)
    end
  end
end
