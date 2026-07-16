require "test_helper"

class HomepageTest < ActionDispatch::IntegrationTest
  test "render homepage successfully with right title" do
    get root_url

    assert_response :success
    assert_select "title", "Inky Hero"
    assert_select "h1", "Inky Hero"
  end

  test "application report health check pass" do
    get rails_health_check_url

    assert_response :success
  end
end
