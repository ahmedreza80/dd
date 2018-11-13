require 'test_helper'

class KitchencabinetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kitchencabinet = kitchencabinets(:one)
  end

  test "should get index" do
    get kitchencabinets_url
    assert_response :success
  end

  test "should get new" do
    get new_kitchencabinet_url
    assert_response :success
  end

  test "should create kitchencabinet" do
    assert_difference('Kitchencabinet.count') do
      post kitchencabinets_url, params: { kitchencabinet: { description: @kitchencabinet.description, price: @kitchencabinet.price, title: @kitchencabinet.title } }
    end

    assert_redirected_to kitchencabinet_url(Kitchencabinet.last)
  end

  test "should show kitchencabinet" do
    get kitchencabinet_url(@kitchencabinet)
    assert_response :success
  end

  test "should get edit" do
    get edit_kitchencabinet_url(@kitchencabinet)
    assert_response :success
  end

  test "should update kitchencabinet" do
    patch kitchencabinet_url(@kitchencabinet), params: { kitchencabinet: { description: @kitchencabinet.description, price: @kitchencabinet.price, title: @kitchencabinet.title } }
    assert_redirected_to kitchencabinet_url(@kitchencabinet)
  end

  test "should destroy kitchencabinet" do
    assert_difference('Kitchencabinet.count', -1) do
      delete kitchencabinet_url(@kitchencabinet)
    end

    assert_redirected_to kitchencabinets_url
  end
end
