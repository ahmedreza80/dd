require 'test_helper'

class DoublebsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doubleb = doublebs(:one)
  end

  test "should get index" do
    get doublebs_url
    assert_response :success
  end

  test "should get new" do
    get new_doubleb_url
    assert_response :success
  end

  test "should create doubleb" do
    assert_difference('Doubleb.count') do
      post doublebs_url, params: { doubleb: { description: @doubleb.description, price: @doubleb.price, title: @doubleb.title } }
    end

    assert_redirected_to doubleb_url(Doubleb.last)
  end

  test "should show doubleb" do
    get doubleb_url(@doubleb)
    assert_response :success
  end

  test "should get edit" do
    get edit_doubleb_url(@doubleb)
    assert_response :success
  end

  test "should update doubleb" do
    patch doubleb_url(@doubleb), params: { doubleb: { description: @doubleb.description, price: @doubleb.price, title: @doubleb.title } }
    assert_redirected_to doubleb_url(@doubleb)
  end

  test "should destroy doubleb" do
    assert_difference('Doubleb.count', -1) do
      delete doubleb_url(@doubleb)
    end

    assert_redirected_to doublebs_url
  end
end
