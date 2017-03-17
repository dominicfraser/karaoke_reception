require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../package")

class TestPackages < Minitest::Test

  def setup
    @package1 = Package.new(60, 50)
    @package2 = Package.new(120, 85)   
  end

  def test_package_length
    assert_equal(60, @package1.length)
  end

end