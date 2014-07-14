require'../lib/todo_list.rb'
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
   assert_equal 0,@a.pending.size
   assert_equal 0,@a.completed.size
   assert_equal 0,@a.list.size
 end

 def test_modify
   @a.empty
#precondition
   assert_equal 0,@a.pending.size
   assert_equal 0,@a.completed.size
   assert_equal 0,@a.list.size
   @a.add("one")
   @a.add("two")
   @a.add("three")
   assert_equal 3,@a.pending.size
   assert_equal 0,@a.completed.size
   assert_equal 3,@a.list.size
   
   assert_equal "merge",@a.modify(3,"merge")
   assert_equal "read",@a.modify(2,"read")
   assert_equal 3,@a.pending.size
   assert_equal 0,@a.completed.size
   assert_equal 3,@a.list.size

  @a.complete(1)
   assert_equal 2,@a.pending.size
   assert_equal 1,@a.completed.size
   assert_equal 3,@a.list.size
 end

  def test_pend
    @a.empty
    assert_equal 0,@a.pending.size
   assert_equal 0,@a.completed.size
   assert_equal 0,@a.list.size
    @a.add("hi ")
    @a.add("hello ")
    @a.add("hwru ")
   assert_equal 3,@a.pending.size
   @a.complete(2)
    assert_equal 2,@a.pending.size
   assert_equal 1,@a.completed.size
   assert_equal 3,@a.list.size
   
  end

  def test_qcompleted

   @a.empty
    assert_equal 0,@a.pending.size
   assert_equal 0,@a.completed.size
   assert_equal 0,@a.list.size
    @a.add("google ")
    @a.add("empty")
    @a.add("yahoo ")
   assert_equal 3,@a.pending.size
   @a.complete(2)
    assert_equal 2,@a.pending.size
   assert_equal 1,@a.completed.size
   assert_equal 3,@a.list.size
 
 end
  def test_read
       @a.empty
       @a.add("veer #undone")
       @a.add("yh #undone")
     assert_equal 2,@a.pending.size
     assert_equal 0,@a.completed.size
      @a.complete9(1)
     assert_equal 1,@a.pending.size
     assert_equal 1,@a.completed.size
     assert_equal 2,@a.list.size 
   assert_equal 2,@a.load1.size
  end
 
 def test_save1
  @a.empty
     @a.add("man #undone")
       @a.add("sag #undone")
     assert_equal 2,@a.pending.size
     assert_equal 0,@a.completed.size
      @a.complete9(1)
     assert_equal 1,@a.pending.size
     assert_equal 1,@a.completed.size
     assert_equal 2,@a.list.size 
     assert_equal 2,@a.save.size
 end
   
  def test_save_to_file
    @a.empty
    @a.add("veeresh #undone")
       @a.add("yh #undone")
     assert_equal 2,@a.pending.size
     assert_equal 0,@a.completed.size
      @a.complete9(1)
     assert_equal 1,@a.pending.size
     assert_equal 1,@a.completed.size
     assert_equal 2,@a.list.size 
     assert_equal 2,@a.save.size
     @a.save_to_file("veer.txt")
    
end
 def test_write_file
    @a.empty
  assert_equal 1,@a.load_from_file("veer.txt").size
    assert_equal 2,@a.list.size 
 end
end
