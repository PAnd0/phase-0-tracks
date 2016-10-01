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
end