require 'test_helper'

class DivanbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @divanb = divanbs(:one)
  end

  test "should get index" do
    get divanbs_url
    assert_response :success
  end

  test "should get new" do
    get new_divanb_url
    assert_response :success
  end

  test "should create divanb" do
    assert_difference('Divanb.count') do
      post divanbs_url, params: { divanb: { description: @divanb.description, price: @divanb.price, title: @divanb.title } }
    end

    assert_redirected_to divanb_url(Divanb.last)
  end

  test "should show divanb" do
    get divanb_url(@divanb)
    assert_response :success
  end

  test "should get edit" do
    get edit_divanb_url(@divanb)
    assert_response :success
  end

  test "should update divanb" do
    patch divanb_url(@divanb), params: { divanb: { description: @divanb.description, price: @divanb.price, title: @divanb.title } }
    assert_redirected_to divanb_url(@divanb)
  end

  test "should destroy divanb" do
    assert_difference('Divanb.count', -1) do
      delete divanb_url(@divanb)
    end

    assert_redirected_to divanbs_url
  end
end
