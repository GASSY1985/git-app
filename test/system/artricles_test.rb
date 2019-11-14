require "application_system_test_case"

class ArtriclesTest < ApplicationSystemTestCase
  setup do
    @artricle = artricles(:one)
  end

  test "visiting the index" do
    visit artricles_url
    assert_selector "h1", text: "Artricles"
  end

  test "creating a Artricle" do
    visit artricles_url
    click_on "New Artricle"

    fill_in "Author", with: @artricle.author
    fill_in "Text", with: @artricle.text
    fill_in "Title", with: @artricle.title
    click_on "Create Artricle"

    assert_text "Artricle was successfully created"
    click_on "Back"
  end

  test "updating a Artricle" do
    visit artricles_url
    click_on "Edit", match: :first

    fill_in "Author", with: @artricle.author
    fill_in "Text", with: @artricle.text
    fill_in "Title", with: @artricle.title
    click_on "Update Artricle"

    assert_text "Artricle was successfully updated"
    click_on "Back"
  end

  test "destroying a Artricle" do
    visit artricles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Artricle was successfully destroyed"
  end
end
