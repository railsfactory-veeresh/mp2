class Todolist
@todo=[]
@pending=[]
@completed=[]
@add=[]
def self.initialize(filename)
@filename=filename
end
def self.empty
@todo.clear
@pending.clear
@completed.clear
@add.clear
return 0
end


def self.add(item)
@add << item
@pending << item
return @add.size
end

def self.pending
return @pending.size
end

def self.complete(linenumber)
@completed << @pending[linenumber-1]
@pending.delete_at(linenumber - 1)
return @completed.size
end

def completed
return @completed.size
end


def self.list
@todo = @pending + @completed
return @todo.size
end

def self.delete(linenumber)
@completed.delete_at(linenumber - 1)
return @completed.size
end


def self.modify(linenumber,item)
@pending.delete_at(linenumber-1)
@pending << item
return @pending.size
end

def self.empty
a = @todo.clear
return a.size
end

def self.show_pending(linenumber)
return @pending[linenumber-1]
end

def self.show_completed(linenumber)
return @completed[linenumber-1]
end
end


