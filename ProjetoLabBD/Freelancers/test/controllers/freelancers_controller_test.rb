require 'test_helper'

class FreelancersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @freelancer = freelancers(:one)
  end

  test "should get index" do
    get freelancers_url
    assert_response :success
  end

  test "should get new" do
    get new_freelancer_url
    assert_response :success
  end

  test "should create freelancer" do
    assert_difference('Freelancer.count') do
      post freelancers_url, params: { freelancer: { average_score: @freelancer.average_score, login: @freelancer.login } }
    end

    assert_redirected_to freelancer_url(Freelancer.last)
  end

  test "should show freelancer" do
    get freelancer_url(@freelancer)
    assert_response :success
  end

  test "should get edit" do
    get edit_freelancer_url(@freelancer)
    assert_response :success
  end

  test "should update freelancer" do
    patch freelancer_url(@freelancer), params: { freelancer: { average_score: @freelancer.average_score, login: @freelancer.login } }
    assert_redirected_to freelancer_url(@freelancer)
  end

  test "should destroy freelancer" do
    assert_difference('Freelancer.count', -1) do
      delete freelancer_url(@freelancer)
    end

    assert_redirected_to freelancers_url
  end
end
