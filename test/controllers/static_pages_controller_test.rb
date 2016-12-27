require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "BOXD"
  end

  test "should get index" do
    get index_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get meals" do
    get our_meals_path
    assert_response :success
    assert_select "title", "Our Meals|#{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title","About|#{@base_title}"
  end

  test "should get how" do
    get how_it_works_path
    assert_response :success
    assert_select "title", "How it works|#{@base_title}"
  end

end
