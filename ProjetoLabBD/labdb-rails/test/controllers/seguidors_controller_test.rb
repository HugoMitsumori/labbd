require 'test_helper'

class SeguidorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seguidor = seguidors(:one)
  end

  test "should get index" do
    get seguidors_url
    assert_response :success
  end

  test "should get new" do
    get new_seguidor_url
    assert_response :success
  end

  test "should create seguidor" do
    assert_difference('Seguidor.count') do
      post seguidors_url, params: { seguidor: { login_seguido: @seguidor.login_seguido, login_seguidor: @seguidor.login_seguidor } }
    end

    assert_redirected_to seguidor_url(Seguidor.last)
  end

  test "should show seguidor" do
    get seguidor_url(@seguidor)
    assert_response :success
  end

  test "should get edit" do
    get edit_seguidor_url(@seguidor)
    assert_response :success
  end

  test "should update seguidor" do
    patch seguidor_url(@seguidor), params: { seguidor: { login_seguido: @seguidor.login_seguido, login_seguidor: @seguidor.login_seguidor } }
    assert_redirected_to seguidor_url(@seguidor)
  end

  test "should destroy seguidor" do
    assert_difference('Seguidor.count', -1) do
      delete seguidor_url(@seguidor)
    end

    assert_redirected_to seguidors_url
  end
end
