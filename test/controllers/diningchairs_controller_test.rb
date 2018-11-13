require 'test_helper'

class DiningchairsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diningchair = diningchairs(:one)
  end

  test "should get index" do
    get diningchairs_url
    assert_response :success
  end

  test "should get new" do
    get new_diningchair_url
    assert_response :success
  end

  test "should create diningchair" do
    assert_difference('Diningchair.count') do
      post diningchairs_url, params: { diningchair: { description: @diningchair.description, price: @diningchair.price, title: @diningchair.title } }
    end

    assert_redirected_to diningchair_url(Diningchair.last)
  end

  test "should show diningchair" do
    get diningchair_url(@diningchair)
    assert_response :success
  end

  test "should get edit" do
    get edit_diningchair_url(@diningchair)
    assert_response :success
  end

  test "should update diningchair" do
    patch diningchair_url(@diningchair), params: { diningchair: { description: @diningchair.description, price: @diningchair.price, title: @diningchair.title } }
    assert_redirected_to diningchair_url(@diningchair)
  end

  test "should destroy diningchair" do
    assert_difference('Diningchair.count', -1) do
      delete diningchair_url(@diningchair)
    end

    assert_redirected_to diningchairs_url
  end
end
