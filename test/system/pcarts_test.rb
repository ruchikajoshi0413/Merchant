require "application_system_test_case"

class PcartsTest < ApplicationSystemTestCase
  setup do
    @pcart = pcarts(:one)
  end

  test "visiting the index" do
    visit pcarts_url
    assert_selector "h1", text: "Pcarts"
  end

  test "should create pcart" do
    visit pcarts_url
    click_on "New pcart"

    fill_in "Product", with: @pcart.product_id
    fill_in "Quantity", with: @pcart.quantity
    fill_in "Size", with: @pcart.size
    fill_in "User", with: @pcart.user_id
    click_on "Create Pcart"

    assert_text "Pcart was successfully created"
    click_on "Back"
  end

  test "should update Pcart" do
    visit pcart_url(@pcart)
    click_on "Edit this pcart", match: :first

    fill_in "Product", with: @pcart.product_id
    fill_in "Quantity", with: @pcart.quantity
    fill_in "Size", with: @pcart.size
    fill_in "User", with: @pcart.user_id
    click_on "Update Pcart"

    assert_text "Pcart was successfully updated"
    click_on "Back"
  end

  test "should destroy Pcart" do
    visit pcart_url(@pcart)
    click_on "Destroy this pcart", match: :first

    assert_text "Pcart was successfully destroyed"
  end
end
