require 'test_helper'

class ShoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shoe = shoes(:one)
  end

  test "should get index" do
    get shoes_url
    assert_response :success
  end

  test "should get new" do
    get new_shoe_url
    assert_response :success
  end

  test "should create shoe" do
    assert_difference('Shoe.count') do
      post shoes_url, params: { shoe: { color: @shoe.color, price: @shoe.price, product: @shoe.product, release_date: @shoe.release_date, retailer: @shoe.retailer, style_code: @shoe.style_code } }
    end

    assert_redirected_to shoe_url(Shoe.last)
  end

  test "should show shoe" do
    get shoe_url(@shoe)
    assert_response :success
  end

  test "should get edit" do
    get edit_shoe_url(@shoe)
    assert_response :success
  end

  test "should update shoe" do
    patch shoe_url(@shoe), params: { shoe: { color: @shoe.color, price: @shoe.price, product: @shoe.product, release_date: @shoe.release_date, retailer: @shoe.retailer, style_code: @shoe.style_code } }
    assert_redirected_to shoe_url(@shoe)
  end

  test "should destroy shoe" do
    assert_difference('Shoe.count', -1) do
      delete shoe_url(@shoe)
    end

    assert_redirected_to shoes_url
  end
end
