require 'test_helper'

class RemoveCompanyFromContractorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @remove_company_from_contractor = remove_company_from_contractors(:one)
  end

  test "should get index" do
    get remove_company_from_contractors_url
    assert_response :success
  end

  test "should get new" do
    get new_remove_company_from_contractor_url
    assert_response :success
  end

  test "should create remove_company_from_contractor" do
    assert_difference('RemoveCompanyFromContractor.count') do
      post remove_company_from_contractors_url, params: { remove_company_from_contractor: { company_id: @remove_company_from_contractor.company_id } }
    end

    assert_redirected_to remove_company_from_contractor_url(RemoveCompanyFromContractor.last)
  end

  test "should show remove_company_from_contractor" do
    get remove_company_from_contractor_url(@remove_company_from_contractor)
    assert_response :success
  end

  test "should get edit" do
    get edit_remove_company_from_contractor_url(@remove_company_from_contractor)
    assert_response :success
  end

  test "should update remove_company_from_contractor" do
    patch remove_company_from_contractor_url(@remove_company_from_contractor), params: { remove_company_from_contractor: { company_id: @remove_company_from_contractor.company_id } }
    assert_redirected_to remove_company_from_contractor_url(@remove_company_from_contractor)
  end

  test "should destroy remove_company_from_contractor" do
    assert_difference('RemoveCompanyFromContractor.count', -1) do
      delete remove_company_from_contractor_url(@remove_company_from_contractor)
    end

    assert_redirected_to remove_company_from_contractors_url
  end
end
