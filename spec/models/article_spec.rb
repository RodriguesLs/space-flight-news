require 'rails_helper'

RSpec.describe Article, type: :model do
  subject(:article) { create :article }

  describe '.validates' do
    before { article }
    
    it { is_expected.to validate_presence_of(:title) }
  end
end
