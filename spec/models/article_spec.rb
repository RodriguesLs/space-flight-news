require 'rails_helper'

RSpec.describe Article, type: :model do
  subject(:article) { create :article }

  describe '.validates' do
    before { article }
    
    it { is_expected.to validate_presence_of(:title) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:events) }
    it { is_expected.to have_many(:launches) }
  end

  describe '.hooks' do
    it { expect(article.published_at).not_to be_nil }
  end
end
