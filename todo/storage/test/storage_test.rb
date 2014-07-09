require '../lib/storage'
require 'test/unit'


class Teststorage < Test::Unit::TestCase



  def 
    assert_equal "hello world",Storage.dump(sample.txt)
    assert_equal "sample.txt",Storage.delete(sample.txt)
end
end
