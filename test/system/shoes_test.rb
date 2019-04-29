require "application_system_test_case"

class ShoesTest < ApplicationSystemTestCase
  setup do
    @shoe = shoes(:one)
  end

  test "visiting the index" do
    visit shoes_url
    assert_selector "h1", text: "Shoes"
  end

  test "creating a Shoe" do
    visit shoes_url
    click_on "New Shoe"

    fill_in "Color", with: @shoe.color
    fill_in "Price", with: @shoe.price
    fill_in "Product", with: @shoe.product
    fill_in "Release date", with: @shoe.release_date
    fill_in "Retailer", with: @shoe.retailer
    fill_in "Style code", with: @shoe.style_code
    click_on "Create Shoe"

    assert_text "Shoe was successfully created"
    click_on "Back"
  end

  test "updating a Shoe" do
    visit shoes_url
    click_on "Edit", match: :first

    fill_in "Color", with: @shoe.color
    fill_in "Price", with: @shoe.price
    fill_in "Product", with: @shoe.product
    fill_in "Release date", with: @shoe.release_date
    fill_in "Retailer", with: @shoe.retailer
    fill_in "Style code", with: @shoe.style_code
    click_on "Update Shoe"

    assert_text "Shoe was successfully updated"
    click_on "Back"
  end

  test "destroying a Shoe" do
    visit shoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shoe was successfully destroyed"
  end
end
