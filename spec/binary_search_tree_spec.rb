require_relative '../src/binary_search_tree'

describe BinarySearchTree, '#insert' do
  let(:binary_search_tree) { BinarySearchTree.new(Fixnum) }

  it 'adds a node to a binary search tree' do
    binary_search_tree.insert(1)['success'].should eq(true)
    binary_search_tree.search(1).value.should eq(1)
  end
 
  it 'adds three nodes to a binary search tree' do
    binary_search_tree.insert(2)['success'].should eq(true)
    binary_search_tree.insert(1)['success'].should eq(true)
    binary_search_tree.insert(3)['success'].should eq(true) 
    binary_search_tree.search(3).value.should eq(3)
    binary_search_tree.search(2).value.should eq(2)
    binary_search_tree.search(1).value.should eq(1)
  end

  it 'should only allow acceptable types' do
    return_value = binary_search_tree.insert('someString')
    return_value['success'].should eq(false)
    return_value['errorMessage'].should eq('Invalid input value type')
  end
  
  it 'should return map with success equal to false when inserting multiple times' do
    binary_search_tree.insert(3)['success'].should eq(true) 
    return_value = binary_search_tree.insert(3)
    return_value['success'].should eq(false)
    return_value['errorMessage'].should eq('Element already exists')
  end
end
