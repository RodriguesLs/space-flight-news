require 'rails_helper'

RSpec.describe ArticleSerializer do
  subject(:serializer) { described_class.new(article) }

  let(:article) { create :article }

  before do
    create(:event, article: article)
    create(:launch, article: article)
  end

  it 'respond to attributes' do
    expect(serializer.attributes.keys).to contain_exactly(
      :featured,
      :title,
      :url,
      :image_url,
      :news_site,
      :summary,
      :events,
      :launches,
      :published_at,
      :updated_at
    )
  end
end
