require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get services_url
    assert_response :success
  end

  test "should get new" do
    get new_service_url
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post services_url, params: { service: { contractor_login: @service.contractor_login, end_date: @service.end_date, final_score: @service.final_score, price: @service.price, service_code: @service.service_code, service_name: @service.service_name, solution_id: @service.solution_id, start_date: @service.start_date, status: @service.status } }
    end

    assert_redirected_to service_url(Service.last)
  end

  test "should show service" do
    get service_url(@service)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_url(@service)
    assert_response :success
  end

  test "should update service" do
    patch service_url(@service), params: { service: { contractor_login: @service.contractor_login, end_date: @service.end_date, final_score: @service.final_score, price: @service.price, service_code: @service.service_code, service_name: @service.service_name, solution_id: @service.solution_id, start_date: @service.start_date, status: @service.status } }
    assert_redirected_to service_url(@service)
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete service_url(@service)
    end

    assert_redirected_to services_url
  end
end
