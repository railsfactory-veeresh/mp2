class Todolist
$todo=[]
$pending=[]
$completed=[]
$add=[]
def initialize(filename)
$filename=filename
end
def empty
$todo.clear
$pending.clear
$completed.clear
$add.clear
return 0
end


def add(item)
$add << item
$pending << item
return $add.size
end

def pending
return $pending.size
end

def complete(linenumber)
$completed << $pending[linenumber-1]
$pending.delete_at(linenumber - 1)
return $completed.size
end

def completed
return $completed.size
end


def list
$todo = $pending + $completed
return $todo.size
end

def delete(linenumber)
$completed.delete_at(linenumber - 1)

return $completed.size
end


def modify(linenumber,item)
$pending.delete_at(linenumber-1)
$pending << item
return $pending.size
end

def empty
a = $todo.clear
return a.size
end

def show_pending(linenumber)
return $pending[linenumber-1]
end

def show_completed(linenumber)
return $completed[linenumber-1]
end
end


