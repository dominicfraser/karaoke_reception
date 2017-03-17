require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../packages")

class TestPackages < Minitest::Test

  def setup
    @packages1 = Packages.new(60, 50)
    @packages2 = Packages.new(120, 85)   
  end



end