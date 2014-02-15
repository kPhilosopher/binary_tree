require_relative 'node_mapper'

describe NodeMapper, '#map' do
  
  let(:root) { NodeMapper.new }

  it 'maps the one node' do
    root = NodeMapper.new
    root.value = 1
    
    output = root.map()

    output.should eq('1')
  end

  it 'maps the left, middle, then the right node' do
    root = NodeMapper.new
    root.value = 1
    root.left_node = NodeMapper.new
    root.left_node.value = 0
    root.right_node = NodeMapper.new
    root.right_node.value= 2

    output = root.map()

    output.should eq('0, 1, 2')
  end

  it 'maps the left, middle, then the right node' do
    root = NodeMapper.new
    root.value = 30 
    root.left_node = NodeMapper.new
    root.left_node.value = 1
    root.left_node.left_node = NodeMapper.new
    root.left_node.left_node.value = 0
    root.left_node.right_node = NodeMapper.new
    root.left_node.right_node.value = 2
    root.left_node.right_node.right_node = NodeMapper.new
    root.left_node.right_node.right_node.value = 9
    root.left_node.right_node.right_node.left_node = NodeMapper.new
    root.left_node.right_node.right_node.left_node.value = 8
    root.left_node.right_node.right_node.right_node = NodeMapper.new
    root.left_node.right_node.right_node.right_node.value = 10
    root.right_node = NodeMapper.new
    root.right_node.value= 40
    root.right_node.right_node = NodeMapper.new
    root.right_node.right_node.value = 100
    root.right_node.right_node.right_node = NodeMapper.new
    root.right_node.right_node.right_node.value = 1000

    output = root.map()

    output.should eq('0, 1, 2, 8, 9, 10, 30, 40, 100, 1000')
  end
end

