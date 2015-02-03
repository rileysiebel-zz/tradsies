require 'test_helper'

class PropertyTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    # This code is not idiomatically correct.
    @property = @user.properties.build(address: "207 Guerrero St", user_id: @user.id)
  end

  test "should be valid" do
    assert @property.valid?
  end

  test "user id should be present" do
    @property.user_id = nil
    assert_not @property.valid?
  end
end
