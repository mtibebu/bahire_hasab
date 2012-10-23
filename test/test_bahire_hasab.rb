require 'test/unit'
require 'bahire_hasab'
include BahireHasab
class BahireHasabTest < Test::Unit::TestCase
  def setup
    @abushahir = Abushahir.new
  end

  def test_setKemerat
    ks = @abushahir.setKemerat 2004
    assert_equal(7, ks[:abeqte])
    assert_equal(23, ks[:metq])
  end

  def test_setBealat
    bt = @abushahir.setBealat 2004
    nenewe = bt[:nenewe]
    assert_equal("2004-5-28", nenewe.date)
  end
end
