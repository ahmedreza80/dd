require 'test_helper'

class BookcabinetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookcabinet = bookcabinets(:one)
  end

  test "should get index" do
    get bookcabinets_url
    assert_response :success
  end

  test "should get new" do
    get new_bookcabinet_url
    assert_response :success
  end

  test "should create bookcabinet" do
    assert_difference('Bookcabinet.count') do
      post bookcabinets_url, params: { bookcabinet: { description: @bookcabinet.description, price: @bookcabinet.price, title: @bookcabinet.title } }
    end

    assert_redirected_to bookcabinet_url(Bookcabinet.last)
  end

  test "should show bookcabinet" do
    get bookcabinet_url(@bookcabinet)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookcabinet_url(@bookcabinet)
    assert_response :success
  end

  test "should update bookcabinet" do
    patch bookcabinet_url(@bookcabinet), params: { bookcabinet: { description: @bookcabinet.description, price: @bookcabinet.price, title: @bookcabinet.title } }
    assert_redirected_to bookcabinet_url(@bookcabinet)
  end

  test "should destroy bookcabinet" do
    assert_difference('Bookcabinet.count', -1) do
      delete bookcabinet_url(@bookcabinet)
    end

    assert_redirected_to bookcabinets_url
  end
end
