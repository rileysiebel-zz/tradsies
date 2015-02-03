require 'test_helper'

class PropertiesControllerTest < ActionController::TestCase
  def setup
    @property = properties(:one)
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'Property.count' do
      post :create, property: { address: "Test" }
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Property.count' do
      delete :destroy, id: @property
    end
    assert_redirected_to login_url
  end
end
