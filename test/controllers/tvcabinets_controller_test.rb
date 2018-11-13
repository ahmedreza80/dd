require 'test_helper'

class TvcabinetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tvcabinet = tvcabinets(:one)
  end

  test "should get index" do
    get tvcabinets_url
    assert_response :success
  end

  test "should get new" do
    get new_tvcabinet_url
    assert_response :success
  end

  test "should create tvcabinet" do
    assert_difference('Tvcabinet.count') do
      post tvcabinets_url, params: { tvcabinet: { description: @tvcabinet.description, price: @tvcabinet.price, title: @tvcabinet.title } }
    end

    assert_redirected_to tvcabinet_url(Tvcabinet.last)
  end

  test "should show tvcabinet" do
    get tvcabinet_url(@tvcabinet)
    assert_response :success
  end

  test "should get edit" do
    get edit_tvcabinet_url(@tvcabinet)
    assert_response :success
  end

  test "should update tvcabinet" do
    patch tvcabinet_url(@tvcabinet), params: { tvcabinet: { description: @tvcabinet.description, price: @tvcabinet.price, title: @tvcabinet.title } }
    assert_redirected_to tvcabinet_url(@tvcabinet)
  end

  test "should destroy tvcabinet" do
    assert_difference('Tvcabinet.count', -1) do
      delete tvcabinet_url(@tvcabinet)
    end

    assert_redirected_to tvcabinets_url
  end
end
