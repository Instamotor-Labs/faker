require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerVehicle < Test::Unit::TestCase

  def setup
    @tester = Faker::Vehicle
  end

  def test_make
    assert @tester.make.match(/(mercedes|bmw)/i)
  end

  def test_model
    assert @tester.model.match(/(m5|e350)/i)
  end

  def test_year
    assert @tester.year >= 2008
    assert @tester.year <= 2014
  end

  def test_price
    assert @tester.price >= 10000
    assert @tester.price <= 60000
  end

  def test_vin
    assert @tester.vin.length == 17
  end
end
