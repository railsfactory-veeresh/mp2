require  '../lib/todo_list.rb'
require 'test/unit'


class Testcase < Test::Unit::TestCase
 $object=Todolist.new("veer.txt")


  def test_add1
  assert_equal 0,$object.empty
  assert_equal 0,$object.list
  assert_equal 0,$object.pending
  
  end 
  def test_add2
   assert_equal 0,$object.empty
   assert_equal 1,$object.add("hello")
   assert_equal 1,$object.pending
   assert_equal 1,$object.list
   assert_equal "hello",$object.show_pending(1)
end

def test_add3
assert_equal 2,$object.add("yellow")
assert_equal 3,$object.add("blue")
assert_equal 1,$object.complete(1)
assert_equal 2,$object.pending
assert_equal "yellow",$object.show_pending(1)
assert_equal "hello",$object.show_completed(1)
end
def test_add4
assert_equal 4,$object.add("orange")
assert_equal 5,$object.add("pink")
assert_equal 2,$object.complete(2)
assert_equal 3,$object.modify(2,"hi")
end
def test_add5
assert_equal 6,$object.add("gray")
assert_equal 1,$object.delete(1)

end
end
