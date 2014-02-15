require_relative '../../src/node'

class NodeMapper < Node
  attr_accessor :right_node, :left_node, :value

  def map
    string_to_return = ''
    if @left_node != nil
      string_to_return << @left_node.value.to_s 
      string_to_return << ', '
    end
    string_to_return << @value.to_s
    if @right_node != nil
      string_to_return << ', '
      string_to_return << @right_node.value.to_s 
    end
    return string_to_return
  end
end
