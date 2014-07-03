require_relative '../lib/roman'
require 'test/unit'


class TestRoman < Test::Unit::TestCase

  def test_hello
    assert true
  end


  def test_one
    assert_equal 'I',Roman.convert(1)
  end



end  