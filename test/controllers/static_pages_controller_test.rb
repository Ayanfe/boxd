require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "BOXD"
  end

  test "should get index" do
    get static_pages_index_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get meals" do
    get static_pages_meals_url
    assert_response :success
    assert_select "title", "Our Meals|#{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title","About|#{@base_title}"
  end

  test "should get how" do
    get static_pages_how_url
    assert_response :success
    assert_select "title", "How it works|#{@base_title}"
  end

end
