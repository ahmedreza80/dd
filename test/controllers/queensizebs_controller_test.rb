require 'test_helper'

class QueensizebsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @queensizeb = queensizebs(:one)
  end

  test "should get index" do
    get queensizebs_url
    assert_response :success
  end

  test "should get new" do
    get new_queensizeb_url
    assert_response :success
  end

  test "should create queensizeb" do
    assert_difference('Queensizeb.count') do
      post queensizebs_url, params: { queensizeb: { description: @queensizeb.description, price: @queensizeb.price, title: @queensizeb.title } }
    end

    assert_redirected_to queensizeb_url(Queensizeb.last)
  end

  test "should show queensizeb" do
    get queensizeb_url(@queensizeb)
    assert_response :success
  end

  test "should get edit" do
    get edit_queensizeb_url(@queensizeb)
    assert_response :success
  end

  test "should update queensizeb" do
    patch queensizeb_url(@queensizeb), params: { queensizeb: { description: @queensizeb.description, price: @queensizeb.price, title: @queensizeb.title } }
    assert_redirected_to queensizeb_url(@queensizeb)
  end

  test "should destroy queensizeb" do
    assert_difference('Queensizeb.count', -1) do
      delete queensizeb_url(@queensizeb)
    end

    assert_redirected_to queensizebs_url
  end
end
