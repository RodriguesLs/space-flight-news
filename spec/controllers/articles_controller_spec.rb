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

  describe 'POST #create' do
    let(:params) do
      {
        article: {
          featured: true,
          title: "Some title",
          url: "https://spacenews.com/dod-space-agency-making-cont-budget/",
          image_url: "https://spacenews.com/wp-content/uploads/2020.png",
          news_site: "SpaceNews",
          summary: "The Space Development Agency’s plans to launch 20 satellites and procure an Dec. 6."
        }
      }
    end

    before { post :create, params: params }

    it { expect(response).to have_http_status(:created) }
    it { expect(json_page['title']).to eq(params[:article][:title]) }
    it { expect(json_page['summary']).to eq(params[:article][:summary]) }
    it { expect(json_page['published_at']).not_to be_nil }
    it { expect(json_page['published_at'].to_date).to eq(json_page['updated_at'].to_date) }
  end
end
