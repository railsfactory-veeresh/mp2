require  '../lib/todo_list.rb'
require 'test/unit'


class Testcase < Test::Unit::TestCase
 


  def test_add1
  assert_equal 0,Todolist.empty
  assert_equal 0,Todolist.list
  assert_equal 0,Todolist.pending
  
  end 
  def test_add2
   assert_equal 0,Todolist.empty
   assert_equal 1,Todolist.add("hello")
   assert_equal 1,Todolist.pending
   assert_equal 1,Todolist.list
   assert_equal "hello",Todolist.show_pending(1)
end

def test_add3
assert_equal 2,Todolist.add("yellow")
assert_equal 3,Todolist.add("blue")
assert_equal 1,Todolist.complete(1)
assert_equal 2,Todolist.pending
assert_equal "yellow",Todolist.show_pending(1)
assert_equal "hello",Todolist.show_completed(1)
end
def test_add4
assert_equal 4,Todolist.add("orange")
assert_equal 5,Todolist.add("pink")
assert_equal 2,Todolist.complete(2)
assert_equal 3,Todolist.modify(2,"hi")
end
def test_add5
assert_equal 6,Todolist.add("gray")


end
end
