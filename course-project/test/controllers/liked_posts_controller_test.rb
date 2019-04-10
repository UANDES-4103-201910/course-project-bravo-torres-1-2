require 'test_helper'

class LikedPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @liked_post = liked_posts(:one)
  end

  test "should get index" do
    get liked_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_liked_post_url
    assert_response :success
  end

  test "should create liked_post" do
    assert_difference('LikedPost.count') do
      post liked_posts_url, params: { liked_post: { creation_date: @liked_post.creation_date, post_id: @liked_post.post_id, user_id: @liked_post.user_id } }
    end

    assert_redirected_to liked_post_url(LikedPost.last)
  end

  test "should show liked_post" do
    get liked_post_url(@liked_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_liked_post_url(@liked_post)
    assert_response :success
  end

  test "should update liked_post" do
    patch liked_post_url(@liked_post), params: { liked_post: { creation_date: @liked_post.creation_date, post_id: @liked_post.post_id, user_id: @liked_post.user_id } }
    assert_redirected_to liked_post_url(@liked_post)
  end

  test "should destroy liked_post" do
    assert_difference('LikedPost.count', -1) do
      delete liked_post_url(@liked_post)
    end

    assert_redirected_to liked_posts_url
  end
end
