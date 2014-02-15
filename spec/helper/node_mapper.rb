require_relative '../../src/node'

class NodeMapper < Node
  attr_accessor :right_node, :left_node, :value

  def map(string_to_return=nil)
    string_to_return = '' if string_to_return == nil
    if @left_node != nil
      string_to_return << @left_node.map()
      string_to_return << ', '
    end
    string_to_return << @value.to_s
    if @right_node != nil
      string_to_return << ', '
      string_to_return << right_node.map()
    end
    return string_to_return
  end
end
