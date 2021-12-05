require "test_helper"

class EventTest < ActiveSupport::TestCase
  test "should save event" do
    article = articles(:one)

    event = Event.new(external_id: 11, provider: 'some_provider', article_id: article.id)

    assert event.save
  end

  test "should not save lauch without provider" do
    event = Event.new()

    assert_not event.save
  end
end
