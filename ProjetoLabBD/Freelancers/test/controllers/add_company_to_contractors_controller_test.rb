require 'test_helper'

class AddCompanyToContractorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_company_to_contractor = add_company_to_contractors(:one)
  end

  test "should get index" do
    get add_company_to_contractors_url
    assert_response :success
  end

  test "should get new" do
    get new_add_company_to_contractor_url
    assert_response :success
  end

  test "should create add_company_to_contractor" do
    assert_difference('AddCompanyToContractor.count') do
      post add_company_to_contractors_url, params: { add_company_to_contractor: { company_id: @add_company_to_contractor.company_id } }
    end

    assert_redirected_to add_company_to_contractor_url(AddCompanyToContractor.last)
  end

  test "should show add_company_to_contractor" do
    get add_company_to_contractor_url(@add_company_to_contractor)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_company_to_contractor_url(@add_company_to_contractor)
    assert_response :success
  end

  test "should update add_company_to_contractor" do
    patch add_company_to_contractor_url(@add_company_to_contractor), params: { add_company_to_contractor: { company_id: @add_company_to_contractor.company_id } }
    assert_redirected_to add_company_to_contractor_url(@add_company_to_contractor)
  end

  test "should destroy add_company_to_contractor" do
    assert_difference('AddCompanyToContractor.count', -1) do
      delete add_company_to_contractor_url(@add_company_to_contractor)
    end

    assert_redirected_to add_company_to_contractors_url
  end
end
