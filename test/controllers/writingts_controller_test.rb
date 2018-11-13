require 'test_helper'

class WritingtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @writingt = writingts(:one)
  end

  test "should get index" do
    get writingts_url
    assert_response :success
  end

  test "should get new" do
    get new_writingt_url
    assert_response :success
  end

  test "should create writingt" do
    assert_difference('Writingt.count') do
      post writingts_url, params: { writingt: { description: @writingt.description, price: @writingt.price, title: @writingt.title } }
    end

    assert_redirected_to writingt_url(Writingt.last)
  end

  test "should show writingt" do
    get writingt_url(@writingt)
    assert_response :success
  end

  test "should get edit" do
    get edit_writingt_url(@writingt)
    assert_response :success
  end

  test "should update writingt" do
    patch writingt_url(@writingt), params: { writingt: { description: @writingt.description, price: @writingt.price, title: @writingt.title } }
    assert_redirected_to writingt_url(@writingt)
  end

  test "should destroy writingt" do
    assert_difference('Writingt.count', -1) do
      delete writingt_url(@writingt)
    end

    assert_redirected_to writingts_url
  end
end
