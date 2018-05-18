require 'test_helper'

class WorkshopsControllerTest < ActionController::TestCase
  test "should get vue_workshop" do
    get :vue_workshop
    assert_response :success
  end

end
