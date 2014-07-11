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
   assert_equal 1,Todolist.complete(1)
   assert_equal 1,Todolist.list
end

def test_second_item
assert_equal 1,Todolist.add("yellow")
assert_equal 2,Todolist.add("blue")
assert_equal 2,Todolist.pending
end


end
