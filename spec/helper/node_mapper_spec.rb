require_relative 'node_mapper'

describe NodeMapper, '#map' do
  
  let(:root) { NodeMapper.new }

  it 'maps the one node' do
    @root = NodeMapper.new
    @root.value = 1
    
    output = @root.map()

    output.should eq("1")
  end

  it 'maps the left, middle, then the right node' do
    @root = NodeMapper.new
    @root.value = 1
    @root.left_node = NodeMapper.new
    @root.left_node.value = 0
    @root.right_node = NodeMapper.new
    @root.right_node.value= 2

    output = @root.map()

    output.should eq("0, 1, 2")
  end

  #it 'maps the left, middle, then the right node' do
  #  @root = NodeMapper.new
  #  @root.value = 3
  #  @root.left_node = NodeMapper.new
  #  @root.left_node.value = 1
  #  @root.left_node.left_node = NodeMapper.new
  #  @root.left_node.left_node.value = 0
  #  @root.left_node.right_node = NodeMapper.new
  #  @root.left_node.right_node.value = 2
  #  @root.right_node = NodeMapper.new
  #  @root.right_node.value= 4

  #  output = @root.map()

  #  output.should eq("0, 1, 2, 3, 4")
  #end
end

