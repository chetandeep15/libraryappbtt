require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should_get_login_form" do
  	get :new
  	assert_template :new
  end

  test "should_login" do
  	post :create, session: { email: 'example@valid.com', password: 'password' }
  	assert session[:user_id].nil?
  	
  end
  

end
