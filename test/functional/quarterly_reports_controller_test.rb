require 'test_helper'

class QuarterlyReportsControllerTest < ActionController::TestCase
  setup do
    @quarterly_report = quarterly_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quarterly_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quarterly_report" do
    assert_difference('QuarterlyReport.count') do
      post :create, :quarterly_report => @quarterly_report.attributes
    end

    assert_redirected_to quarterly_report_path(assigns(:quarterly_report))
  end

  test "should show quarterly_report" do
    get :show, :id => @quarterly_report.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @quarterly_report.to_param
    assert_response :success
  end

  test "should update quarterly_report" do
    put :update, :id => @quarterly_report.to_param, :quarterly_report => @quarterly_report.attributes
    assert_redirected_to quarterly_report_path(assigns(:quarterly_report))
  end

  test "should destroy quarterly_report" do
    assert_difference('QuarterlyReport.count', -1) do
      delete :destroy, :id => @quarterly_report.to_param
    end

    assert_redirected_to quarterly_reports_path
  end
end
