 require '../lib/storage'
require 'test/unit'


class TestStorage < Test::Unit::TestCase



  def test_num
    assert_equal 'hello world',Storage.dump(sample.txt)
end
end