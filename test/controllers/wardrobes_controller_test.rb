require 'test_helper'

class WardrobesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wardrobe = wardrobes(:one)
  end

  test "should get index" do
    get wardrobes_url
    assert_response :success
  end

  test "should get new" do
    get new_wardrobe_url
    assert_response :success
  end

  test "should create wardrobe" do
    assert_difference('Wardrobe.count') do
      post wardrobes_url, params: { wardrobe: { description: @wardrobe.description, price: @wardrobe.price, title: @wardrobe.title } }
    end

    assert_redirected_to wardrobe_url(Wardrobe.last)
  end

  test "should show wardrobe" do
    get wardrobe_url(@wardrobe)
    assert_response :success
  end

  test "should get edit" do
    get edit_wardrobe_url(@wardrobe)
    assert_response :success
  end

  test "should update wardrobe" do
    patch wardrobe_url(@wardrobe), params: { wardrobe: { description: @wardrobe.description, price: @wardrobe.price, title: @wardrobe.title } }
    assert_redirected_to wardrobe_url(@wardrobe)
  end

  test "should destroy wardrobe" do
    assert_difference('Wardrobe.count', -1) do
      delete wardrobe_url(@wardrobe)
    end

    assert_redirected_to wardrobes_url
  end
end
