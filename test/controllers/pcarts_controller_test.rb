require "test_helper"

class PcartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pcart = pcarts(:one)
  end

  test "should get index" do
    get pcarts_url
    assert_response :success
  end

  test "should get new" do
    get new_pcart_url
    assert_response :success
  end

  test "should create pcart" do
    assert_difference("Pcart.count") do
      post pcarts_url, params: { pcart: { product_id: @pcart.product_id, quantity: @pcart.quantity, size: @pcart.size, user_id: @pcart.user_id } }
    end

    assert_redirected_to pcart_url(Pcart.last)
  end

  test "should show pcart" do
    get pcart_url(@pcart)
    assert_response :success
  end

  test "should get edit" do
    get edit_pcart_url(@pcart)
    assert_response :success
  end

  test "should update pcart" do
    patch pcart_url(@pcart), params: { pcart: { product_id: @pcart.product_id, quantity: @pcart.quantity, size: @pcart.size, user_id: @pcart.user_id } }
    assert_redirected_to pcart_url(@pcart)
  end

  test "should destroy pcart" do
    assert_difference("Pcart.count", -1) do
      delete pcart_url(@pcart)
    end

    assert_redirected_to pcarts_url
  end
end
