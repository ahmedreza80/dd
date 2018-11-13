require 'test_helper'

class UpholsteredbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upholsteredb = upholsteredbs(:one)
  end

  test "should get index" do
    get upholsteredbs_url
    assert_response :success
  end

  test "should get new" do
    get new_upholsteredb_url
    assert_response :success
  end

  test "should create upholsteredb" do
    assert_difference('Upholsteredb.count') do
      post upholsteredbs_url, params: { upholsteredb: { description: @upholsteredb.description, price: @upholsteredb.price, title: @upholsteredb.title } }
    end

    assert_redirected_to upholsteredb_url(Upholsteredb.last)
  end

  test "should show upholsteredb" do
    get upholsteredb_url(@upholsteredb)
    assert_response :success
  end

  test "should get edit" do
    get edit_upholsteredb_url(@upholsteredb)
    assert_response :success
  end

  test "should update upholsteredb" do
    patch upholsteredb_url(@upholsteredb), params: { upholsteredb: { description: @upholsteredb.description, price: @upholsteredb.price, title: @upholsteredb.title } }
    assert_redirected_to upholsteredb_url(@upholsteredb)
  end

  test "should destroy upholsteredb" do
    assert_difference('Upholsteredb.count', -1) do
      delete upholsteredb_url(@upholsteredb)
    end

    assert_redirected_to upholsteredbs_url
  end
end
