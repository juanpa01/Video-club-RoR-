require 'test_helper'

class TypeMoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_movie = type_movies(:one)
  end

  test "should get index" do
    get type_movies_url
    assert_response :success
  end

  test "should get new" do
    get new_type_movie_url
    assert_response :success
  end

  test "should create type_movie" do
    assert_difference('TypeMovie.count') do
      post type_movies_url, params: { type_movie: { category: @type_movie.category } }
    end

    assert_redirected_to type_movie_url(TypeMovie.last)
  end

  test "should show type_movie" do
    get type_movie_url(@type_movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_movie_url(@type_movie)
    assert_response :success
  end

  test "should update type_movie" do
    patch type_movie_url(@type_movie), params: { type_movie: { category: @type_movie.category } }
    assert_redirected_to type_movie_url(@type_movie)
  end

  test "should destroy type_movie" do
    assert_difference('TypeMovie.count', -1) do
      delete type_movie_url(@type_movie)
    end

    assert_redirected_to type_movies_url
  end
end
