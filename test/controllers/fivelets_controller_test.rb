require 'test_helper'

class FiveletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fivelet = fivelets(:one)
  end

  test "should get index" do
    get fivelets_url
    assert_response :success
  end

  test "should get new" do
    get new_fivelet_url
    assert_response :success
  end

  test "should create fivelet" do
    assert_difference('Fivelet.count') do
      post fivelets_url, params: { fivelet: { author: @fivelet.author, suggestion4: @fivelet.suggestion4, suggestion5: @fivelet.suggestion5, suggestion_1: @fivelet.suggestion_1, suggestion_2: @fivelet.suggestion_2, suggestion_3: @fivelet.suggestion_3, title: @fivelet.title } }
    end

    assert_redirected_to fivelet_url(Fivelet.last)
  end

  test "should show fivelet" do
    get fivelet_url(@fivelet)
    assert_response :success
  end

  test "should get edit" do
    get edit_fivelet_url(@fivelet)
    assert_response :success
  end

  test "should update fivelet" do
    patch fivelet_url(@fivelet), params: { fivelet: { author: @fivelet.author, suggestion4: @fivelet.suggestion4, suggestion5: @fivelet.suggestion5, suggestion_1: @fivelet.suggestion_1, suggestion_2: @fivelet.suggestion_2, suggestion_3: @fivelet.suggestion_3, title: @fivelet.title } }
    assert_redirected_to fivelet_url(@fivelet)
  end

  test "should destroy fivelet" do
    assert_difference('Fivelet.count', -1) do
      delete fivelet_url(@fivelet)
    end

    assert_redirected_to fivelets_url
  end
end
