require_relative 'Node'

class BinarySearchTree
  def initialize(classType)
    @type = classType
  end

  def insert(value)
    return {'errorMessage'=>'Invalid input value type', 'success'=>false} if value.class != @type
    @root = Node.new if @root == nil
    @root.insert(value)
  end

  def search(value)
    @root.search(value) if @root != nil
  end
end
