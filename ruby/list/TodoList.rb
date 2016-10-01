class TodoList

  def initialize(tasklist)
    @tasklist = tasklist
  end

  def get_items
    @tasklist
  end

  def add_item(item)
    @tasklist << item
  end

  def delete_item(item)
    @tasklist.delete(item)
  end

  def get_item(index)
    @tasklist[index]
  end
end