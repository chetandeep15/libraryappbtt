require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should_get_user_form" do
  	get :new
  	assert_template :new
  end

test "should_not_create_new_user" do
  	
  	assert_no_difference 'User.count' do
  		post :create, user: { name:  "",
                           email: "user@invalid.com",
                           password:              "foo",
                           password_confirmation: "foo" }
                       end
                   end


  test "should_create_new_user" do
  	
  	assert_difference 'User.count' do
  		post :create, user: { name:  "abcdef",
                           email: "user@valid.com",
                           password:              "foo",
                           password_confirmation: "foo" }
                       end
                   end
end
