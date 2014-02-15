
class Node

  attr_reader :value
  
  def insert(value)
    if @value == nil
      @value = value
      return {'success'=>true}
    end
    if @value < value
      @right_node = Node.new
      @right_node.insert(value) 
    elsif @value > value
      @left_node = Node.new
      @left_node.insert(value)
    elsif @value == value
      return {'success'=>false, 'errorMessage'=>'Element already exists'}
    end
  end
  
  def search(value)
    return self if value == @value
    return @right_node.search(value) if @value < value
    return @left_node.search(value) if @value > value
  end
end
  
