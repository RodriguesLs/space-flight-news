require "test_helper"

class EventTest < ActiveSupport::TestCase
  test "should save event" do
    event = Event.new(provider: 'some_provider')

    assert event.save
  end

  test "should not save lauch without provider" do
    event = Event.new()

    assert_not event.save
  end
end
