require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../guest")

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Jake",20,"song1")
  end

  def test_guest_has_name
    assert_equal("Jake", @guest1.g_name)
  end
  
end