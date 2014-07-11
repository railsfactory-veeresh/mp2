require  '../lib/todo_list.rb'
require 'test/unit'


class Testcase < Test::Unit::TestCase
 


  def test_empty
  assert_equal 0,Todolist.empty
  assert_equal 0,Todolist.list
  assert_equal 0,Todolist.pending
  
  end 
  def test_first_item
   assert_equal 0,Todolist.empty
   assert_equal 1,Todolist.add("hello")
   assert_equal 1,Todolist.pending
   assert_equal 1,Todolist.list
end

def test_second_item
assert_equal 2,Todolist.add("yellow")
assert_equal 3,Todolist.add("blue")
assert_equal 1,Todolist.complete(1)
assert_equal 2,Todolist.pending
assert_equal 2,Todolist.complete(2)
assert_equal 1,Todolist.delete(1)
assert_equal 2,Todolist.modify(2,"hi")
end


end
