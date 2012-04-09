require 'test_helper'

class GraphsControllerTest < ActionController::TestCase
  test "should redirect to root path" do
    get :index
    assert_redirected_to root_path
  end

  test "should get index" do
    user = FactoryGirl.create(:user)

    get :index, {}, { user_id: user.id }
    assert_response :success
  end
end
