require 'test_helper'

class FabricsofasetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fabricsofaset = fabricsofasets(:one)
  end

  test "should get index" do
    get fabricsofasets_url
    assert_response :success
  end

  test "should get new" do
    get new_fabricsofaset_url
    assert_response :success
  end

  test "should create fabricsofaset" do
    assert_difference('Fabricsofaset.count') do
      post fabricsofasets_url, params: { fabricsofaset: { description: @fabricsofaset.description, price: @fabricsofaset.price, title: @fabricsofaset.title } }
    end

    assert_redirected_to fabricsofaset_url(Fabricsofaset.last)
  end

  test "should show fabricsofaset" do
    get fabricsofaset_url(@fabricsofaset)
    assert_response :success
  end

  test "should get edit" do
    get edit_fabricsofaset_url(@fabricsofaset)
    assert_response :success
  end

  test "should update fabricsofaset" do
    patch fabricsofaset_url(@fabricsofaset), params: { fabricsofaset: { description: @fabricsofaset.description, price: @fabricsofaset.price, title: @fabricsofaset.title } }
    assert_redirected_to fabricsofaset_url(@fabricsofaset)
  end

  test "should destroy fabricsofaset" do
    assert_difference('Fabricsofaset.count', -1) do
      delete fabricsofaset_url(@fabricsofaset)
    end

    assert_redirected_to fabricsofasets_url
  end
end
