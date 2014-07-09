require '../lib/todo_list'
require 'test/unit'


class TestTodolist < Test::Unit::TestCase



  def test_todo
    assert_equal 'hello',Todolist.add
end
end

