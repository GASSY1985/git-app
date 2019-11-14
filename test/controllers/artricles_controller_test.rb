require 'test_helper'

class ArtriclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artricle = artricles(:one)
  end

  test "should get index" do
    get artricles_url
    assert_response :success
  end

  test "should get new" do
    get new_artricle_url
    assert_response :success
  end

  test "should create artricle" do
    assert_difference('Artricle.count') do
      post artricles_url, params: { artricle: { author: @artricle.author, text: @artricle.text, title: @artricle.title } }
    end

    assert_redirected_to artricle_url(Artricle.last)
  end

  test "should show artricle" do
    get artricle_url(@artricle)
    assert_response :success
  end

  test "should get edit" do
    get edit_artricle_url(@artricle)
    assert_response :success
  end

  test "should update artricle" do
    patch artricle_url(@artricle), params: { artricle: { author: @artricle.author, text: @artricle.text, title: @artricle.title } }
    assert_redirected_to artricle_url(@artricle)
  end

  test "should destroy artricle" do
    assert_difference('Artricle.count', -1) do
      delete artricle_url(@artricle)
    end

    assert_redirected_to artricles_url
  end
end
