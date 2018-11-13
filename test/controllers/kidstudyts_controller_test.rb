require 'test_helper'

class KidstudytsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kidstudyt = kidstudyts(:one)
  end

  test "should get index" do
    get kidstudyts_url
    assert_response :success
  end

  test "should get new" do
    get new_kidstudyt_url
    assert_response :success
  end

  test "should create kidstudyt" do
    assert_difference('Kidstudyt.count') do
      post kidstudyts_url, params: { kidstudyt: { description: @kidstudyt.description, price: @kidstudyt.price, title: @kidstudyt.title } }
    end

    assert_redirected_to kidstudyt_url(Kidstudyt.last)
  end

  test "should show kidstudyt" do
    get kidstudyt_url(@kidstudyt)
    assert_response :success
  end

  test "should get edit" do
    get edit_kidstudyt_url(@kidstudyt)
    assert_response :success
  end

  test "should update kidstudyt" do
    patch kidstudyt_url(@kidstudyt), params: { kidstudyt: { description: @kidstudyt.description, price: @kidstudyt.price, title: @kidstudyt.title } }
    assert_redirected_to kidstudyt_url(@kidstudyt)
  end

  test "should destroy kidstudyt" do
    assert_difference('Kidstudyt.count', -1) do
      delete kidstudyt_url(@kidstudyt)
    end

    assert_redirected_to kidstudyts_url
  end
end
