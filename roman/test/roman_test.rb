require  '../lib/roman.rb'
require 'test/unit'


class TestRoman < Test::Unit::TestCase

  def test_hello
    assert true
  end


  def test_one
    assert_equal 'C',Roman.convert(100)
    assert_equal 'M',Roman.convert(500)
    
  end



end  
