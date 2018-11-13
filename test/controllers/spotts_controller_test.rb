require 'test_helper'

class SpottsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spott = spotts(:one)
  end

  test "should get index" do
    get spotts_url
    assert_response :success
  end

  test "should get new" do
    get new_spott_url
    assert_response :success
  end

  test "should create spott" do
    assert_difference('Spott.count') do
      post spotts_url, params: { spott: { description: @spott.description, price: @spott.price, title: @spott.title } }
    end

    assert_redirected_to spott_url(Spott.last)
  end

  test "should show spott" do
    get spott_url(@spott)
    assert_response :success
  end

  test "should get edit" do
    get edit_spott_url(@spott)
    assert_response :success
  end

  test "should update spott" do
    patch spott_url(@spott), params: { spott: { description: @spott.description, price: @spott.price, title: @spott.title } }
    assert_redirected_to spott_url(@spott)
  end

  test "should destroy spott" do
    assert_difference('Spott.count', -1) do
      delete spott_url(@spott)
    end

    assert_redirected_to spotts_url
  end
end
