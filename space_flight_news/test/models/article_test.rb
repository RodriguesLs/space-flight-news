require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should save an article" do
    launch = Launch.create(provider: 'some_launcher')
    event = Event.create(provider: 'some_event')

    article = Article.new(
      featured: true,
      title: 'some_title',
      url: 'some_url',
      image_url: 'some_img_url',
      news_site: 'some_news_site',
      summary: 'some_summary',
      published_at: 'some_published_at',
      launch: launch,
      event: event
    )

    assert article.save
  end
end
