require "application_system_test_case"

class CoursubsTest < ApplicationSystemTestCase
  setup do
    @coursub = coursubs(:one)
  end

  test "visiting the index" do
    visit coursubs_url
    assert_selector "h1", text: "Coursubs"
  end

  test "creating a Coursub" do
    visit coursubs_url
    click_on "New Coursub"

    fill_in "Cour", with: @coursub.cour_id
    fill_in "Subj", with: @coursub.subj_id
    click_on "Create Coursub"

    assert_text "Coursub was successfully created"
    click_on "Back"
  end

  test "updating a Coursub" do
    visit coursubs_url
    click_on "Edit", match: :first

    fill_in "Cour", with: @coursub.cour_id
    fill_in "Subj", with: @coursub.subj_id
    click_on "Update Coursub"

    assert_text "Coursub was successfully updated"
    click_on "Back"
  end

  test "destroying a Coursub" do
    visit coursubs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coursub was successfully destroyed"
  end
end
