require 'test_helper'

class DisLikedPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dis_liked_post = dis_liked_posts(:one)
  end

  test "should get index" do
    get dis_liked_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_dis_liked_post_url
    assert_response :success
  end

  test "should create dis_liked_post" do
    assert_difference('DisLikedPost.count') do
      post dis_liked_posts_url, params: { dis_liked_post: { creation_date: @dis_liked_post.creation_date, post_id: @dis_liked_post.post_id, user_id: @dis_liked_post.user_id } }
    end

    assert_redirected_to dis_liked_post_url(DisLikedPost.last)
  end

  test "should show dis_liked_post" do
    get dis_liked_post_url(@dis_liked_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_dis_liked_post_url(@dis_liked_post)
    assert_response :success
  end

  test "should update dis_liked_post" do
    patch dis_liked_post_url(@dis_liked_post), params: { dis_liked_post: { creation_date: @dis_liked_post.creation_date, post_id: @dis_liked_post.post_id, user_id: @dis_liked_post.user_id } }
    assert_redirected_to dis_liked_post_url(@dis_liked_post)
  end

  test "should destroy dis_liked_post" do
    assert_difference('DisLikedPost.count', -1) do
      delete dis_liked_post_url(@dis_liked_post)
    end

    assert_redirected_to dis_liked_posts_url
  end
end
