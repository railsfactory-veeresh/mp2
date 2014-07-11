require '../lib/todo_list.rb'
require 'test/unit'
class TestTodo < Test::Unit::TestCase
 

def setup

  @a = Todolist.new("veer.txt")
 
end

def teardown

  @a=nil
 
end


 def test_zempty
  @a.empty
  assert_equal 0,@a.pending.size
  assert_equal 0,@a.completed.size
  assert_equal 0,@a.list.size
 end



  def test_add1
   @a.empty
   @a.add("one")
   assert_equal 1,@a.list.size
   assert_equal 1,@a.pending.size
   assert_equal 0,@a.completed.size
 end



  def test_add2
@a.empty
@a.add("one")
   @a.add("two")
   assert_equal 2,@a.list.size
   assert_equal 2,@a.pending.size
   assert_equal 0,@a.completed.size
 end




 def test_add3
   @a.empty
   @a.add("write")
   @a.add("read")
   assert_equal 2,@a.list.size
   assert_equal 2,@a.pending.size
   assert_equal 1,@a.complete(1)
   assert_equal 1,@a.pending.size
    assert_equal 1,@a.completed.size
 end


  
 def test_complete
# precondition
@a.empty
@a.add("one")
#before state
assert_equal 1,@a.pending.size
assert_equal 0,@a.completed.size
assert_equal 1,@a.list.size


#action
   @a.complete(1)

#after 
assert_equal 0,@a.pending.size
assert_equal 1,@a.completed.size
assert_equal 1,@a.list.size
 end
def test_delete
# precondition
@a.empty
@a.add("one")
 @a.complete(1)

#before state
assert_equal 0,@a.pending.size
assert_equal 1,@a.completed.size
assert_equal 1,@a.list.size

  @a.delete(1)
#after delition
   assert_equal 0,@a.pending.size
   assert_equal 0,@a.completed.size
   assert_equal 0,@a.list.size
 end

 def test_modify
#before state
   @a.empty
   @a.add("write")
   @a.add("read")
   assert_equal 2,@a.list.size
   assert_equal 2,@a.pending.size
   assert_equal "merge",@a.modify(2,"merge")
#after merge
   assert_equal 2,@a.pending.size
   assert_equal "merge",@a.show_pending(2)
   assert_equal 0,@a.completed.size
#before complition
@a.complete(1)
#after complition
assert_equal 1,@a.completed.size
assert_equal "write",@a.show_completed(1)
end

def test_load
@a.empty
@a.load1
   assert_equal 2,@a.pending.size
   assert_equal 1,@a.completed.size
   assert_equal 3,@a.list.size
end
end
