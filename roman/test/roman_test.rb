require  '../lib/roman.rb'
require 'test/unit'


class TestRoman < Test::Unit::TestCase

  def test_hello
    assert true
  end


  def test_one
    assert_equal 'V',Roman.convert(15)
    assert_equal 'VI',Roman.convert(6)
    assert_equal 'IX',Roman.convert(9)
    
  end



end  
