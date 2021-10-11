require "test_helper"

class UserrailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userrail = userrails(:one)
  end

  test "should get index" do
    get userrails_url
    assert_response :success
  end

  test "should get new" do
    get new_userrail_url
    assert_response :success
  end

  test "should create userrail" do
    assert_difference('Userrail.count') do
      post userrails_url, params: { userrail: { User: @userrail.User, g: @userrail.g, scaffold: @userrail.scaffold } }
    end

    assert_redirected_to userrail_url(Userrail.last)
  end

  test "should show userrail" do
    get userrail_url(@userrail)
    assert_response :success
  end

  test "should get edit" do
    get edit_userrail_url(@userrail)
    assert_response :success
  end

  test "should update userrail" do
    patch userrail_url(@userrail), params: { userrail: { User: @userrail.User, g: @userrail.g, scaffold: @userrail.scaffold } }
    assert_redirected_to userrail_url(@userrail)
  end

  test "should destroy userrail" do
    assert_difference('Userrail.count', -1) do
      delete userrail_url(@userrail)
    end

    assert_redirected_to userrails_url
  end
end
