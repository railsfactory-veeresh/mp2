require '../lib/roman'
require 'test/unit'


class TestRoman < Test::Unit::TestCase

  def test_hello
    assert true
  end


  def test_one
    assert_equal 'IV',Roman.convert(4)
    assert_equal 'V',Roman.convert(5)
    assert_equal 'III',Roman.convert(3)
    assert_equal 'IV',Roman.convert(4)
  end



end  
