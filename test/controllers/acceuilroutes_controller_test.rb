require 'test_helper'

class AcceuilroutesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
