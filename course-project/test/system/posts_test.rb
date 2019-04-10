require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    check "Apropriated" if @post.apropriated
    fill_in "Creation date", with: @post.creation_date
    check "File attachment" if @post.file_attachment
    fill_in "Geofence", with: @post.geofence_id
    check "Is hidden" if @post.is_hidden
    check "Is linked" if @post.is_linked
    check "Is open" if @post.is_open
    check "Is solved" if @post.is_solved
    fill_in "Report counter", with: @post.report_counter
    fill_in "Share counter", with: @post.share_counter
    fill_in "Text", with: @post.text
    fill_in "Title", with: @post.title
    fill_in "User", with: @post.user_id
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    check "Apropriated" if @post.apropriated
    fill_in "Creation date", with: @post.creation_date
    check "File attachment" if @post.file_attachment
    fill_in "Geofence", with: @post.geofence_id
    check "Is hidden" if @post.is_hidden
    check "Is linked" if @post.is_linked
    check "Is open" if @post.is_open
    check "Is solved" if @post.is_solved
    fill_in "Report counter", with: @post.report_counter
    fill_in "Share counter", with: @post.share_counter
    fill_in "Text", with: @post.text
    fill_in "Title", with: @post.title
    fill_in "User", with: @post.user_id
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
