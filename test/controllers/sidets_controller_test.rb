require 'test_helper'

class SidetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sidet = sidets(:one)
  end

  test "should get index" do
    get sidets_url
    assert_response :success
  end

  test "should get new" do
    get new_sidet_url
    assert_response :success
  end

  test "should create sidet" do
    assert_difference('Sidet.count') do
      post sidets_url, params: { sidet: { description: @sidet.description, price: @sidet.price, title: @sidet.title } }
    end

    assert_redirected_to sidet_url(Sidet.last)
  end

  test "should show sidet" do
    get sidet_url(@sidet)
    assert_response :success
  end

  test "should get edit" do
    get edit_sidet_url(@sidet)
    assert_response :success
  end

  test "should update sidet" do
    patch sidet_url(@sidet), params: { sidet: { description: @sidet.description, price: @sidet.price, title: @sidet.title } }
    assert_redirected_to sidet_url(@sidet)
  end

  test "should destroy sidet" do
    assert_difference('Sidet.count', -1) do
      delete sidet_url(@sidet)
    end

    assert_redirected_to sidets_url
  end
end
