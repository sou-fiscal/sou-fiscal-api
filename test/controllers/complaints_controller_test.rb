require 'test_helper'

class ComplaintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complaint = complaints(:one)
  end

  test "should get index" do
    get complaints_url, as: :json
    assert_response :success
  end

  test "should create complaint" do
    assert_difference('Complaint.count') do
      post complaints_url, params: { complaint: { contract: @complaint.contract, delivery_forecast: @complaint.delivery_forecast, detail: @complaint.detail, initial_date: @complaint.initial_date, initial_value: @complaint.initial_value, latitude: @complaint.latitude, longitude: @complaint.longitude, name: @complaint.name, status: @complaint.status, user_id: @complaint.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show complaint" do
    get complaint_url(@complaint), as: :json
    assert_response :success
  end

  test "should update complaint" do
    patch complaint_url(@complaint), params: { complaint: { contract: @complaint.contract, delivery_forecast: @complaint.delivery_forecast, detail: @complaint.detail, initial_date: @complaint.initial_date, initial_value: @complaint.initial_value, latitude: @complaint.latitude, longitude: @complaint.longitude, name: @complaint.name, status: @complaint.status, user_id: @complaint.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy complaint" do
    assert_difference('Complaint.count', -1) do
      delete complaint_url(@complaint), as: :json
    end

    assert_response 204
  end
end
