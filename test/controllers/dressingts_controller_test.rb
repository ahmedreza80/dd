require 'test_helper'

class DressingtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dressingt = dressingts(:one)
  end

  test "should get index" do
    get dressingts_url
    assert_response :success
  end

  test "should get new" do
    get new_dressingt_url
    assert_response :success
  end

  test "should create dressingt" do
    assert_difference('Dressingt.count') do
      post dressingts_url, params: { dressingt: { description: @dressingt.description, price: @dressingt.price, title: @dressingt.title } }
    end

    assert_redirected_to dressingt_url(Dressingt.last)
  end

  test "should show dressingt" do
    get dressingt_url(@dressingt)
    assert_response :success
  end

  test "should get edit" do
    get edit_dressingt_url(@dressingt)
    assert_response :success
  end

  test "should update dressingt" do
    patch dressingt_url(@dressingt), params: { dressingt: { description: @dressingt.description, price: @dressingt.price, title: @dressingt.title } }
    assert_redirected_to dressingt_url(@dressingt)
  end

  test "should destroy dressingt" do
    assert_difference('Dressingt.count', -1) do
      delete dressingt_url(@dressingt)
    end

    assert_redirected_to dressingts_url
  end
end
