require "test_helper"

class LaunchTest < ActiveSupport::TestCase
  test "should save launch" do
    article = articles(:one)

    launch = Launch.new(provider: 'some_provider', article_id: article.id)

    assert launch.save
  end

  test "should not save lauch without provider" do
    launch = Launch.new()

    assert_not launch.save
  end
end
