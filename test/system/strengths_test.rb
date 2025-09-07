require "application_system_test_case"

class StrengthsTest < ApplicationSystemTestCase
  setup do
    @strength = strengths(:one)
  end

  test "visiting the index" do
    visit strengths_url
    assert_selector "h1", text: "Strengths"
  end

  test "should create strength" do
    visit strengths_url
    click_on "New strength"

    fill_in "Domain", with: @strength.domain
    fill_in "Name", with: @strength.name
    click_on "Create Strength"

    assert_text "Strength was successfully created"
    click_on "Back"
  end

  test "should update Strength" do
    visit strength_url(@strength)
    click_on "Edit this strength", match: :first

    fill_in "Domain", with: @strength.domain
    fill_in "Name", with: @strength.name
    click_on "Update Strength"

    assert_text "Strength was successfully updated"
    click_on "Back"
  end

  test "should destroy Strength" do
    visit strength_url(@strength)
    click_on "Destroy this strength", match: :first

    assert_text "Strength was successfully destroyed"
  end
end
