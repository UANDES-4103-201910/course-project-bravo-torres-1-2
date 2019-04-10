require "application_system_test_case"

class DisLikedPostsTest < ApplicationSystemTestCase
  setup do
    @dis_liked_post = dis_liked_posts(:one)
  end

  test "visiting the index" do
    visit dis_liked_posts_url
    assert_selector "h1", text: "Dis Liked Posts"
  end

  test "creating a Dis liked post" do
    visit dis_liked_posts_url
    click_on "New Dis Liked Post"

    fill_in "Creation date", with: @dis_liked_post.creation_date
    fill_in "Post", with: @dis_liked_post.post_id
    fill_in "User", with: @dis_liked_post.user_id
    click_on "Create Dis liked post"

    assert_text "Dis liked post was successfully created"
    click_on "Back"
  end

  test "updating a Dis liked post" do
    visit dis_liked_posts_url
    click_on "Edit", match: :first

    fill_in "Creation date", with: @dis_liked_post.creation_date
    fill_in "Post", with: @dis_liked_post.post_id
    fill_in "User", with: @dis_liked_post.user_id
    click_on "Update Dis liked post"

    assert_text "Dis liked post was successfully updated"
    click_on "Back"
  end

  test "destroying a Dis liked post" do
    visit dis_liked_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dis liked post was successfully destroyed"
  end
end
