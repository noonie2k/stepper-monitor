require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should set user_id in session" do
    user = FactoryGirl.create(:user)

    assert_difference('session[:user_id]') do
      get :create, { user_id: user.id }
    end
    assert_redirected_to root_path
  end

  test "should remove user_id from session" do
    user = FactoryGirl.create(:user)

    get :destroy
    assert_equal(nil, session[:user_id])
    assert_redirected_to root_path
  end

end
