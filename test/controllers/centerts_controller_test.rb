require 'test_helper'

class CentertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @centert = centerts(:one)
  end

  test "should get index" do
    get centerts_url
    assert_response :success
  end

  test "should get new" do
    get new_centert_url
    assert_response :success
  end

  test "should create centert" do
    assert_difference('Centert.count') do
      post centerts_url, params: { centert: { description: @centert.description, price: @centert.price, title: @centert.title } }
    end

    assert_redirected_to centert_url(Centert.last)
  end

  test "should show centert" do
    get centert_url(@centert)
    assert_response :success
  end

  test "should get edit" do
    get edit_centert_url(@centert)
    assert_response :success
  end

  test "should update centert" do
    patch centert_url(@centert), params: { centert: { description: @centert.description, price: @centert.price, title: @centert.title } }
    assert_redirected_to centert_url(@centert)
  end

  test "should destroy centert" do
    assert_difference('Centert.count', -1) do
      delete centert_url(@centert)
    end

    assert_redirected_to centerts_url
  end
end
