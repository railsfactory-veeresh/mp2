require '../lib/storage'
require 'test/unit'


class Teststorage < Test::Unit::TestCase



  def 
    assert_equal "hello world",Storage.dump(sample.txt)
    assert_equal "sample.txt",Storage.dump(sample.txt)
end
end
