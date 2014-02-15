require_relative '../src/binary_search_tree'

describe BinarySearchTree, '#insert' do
  it 'adds a node to a binary search tree' do
    binarySearchTree = BinarySearchTree.new(Fixnum)
    binarySearchTree.insert(1)['success'].should eq(true)
    binarySearchTree.search(1).value.should eq(1)
  end

  it 'adds two nodes to a binary search tree' do
    binarySearchTree = BinarySearchTree.new(Fixnum)
    binarySearchTree.insert(1)['success'].should eq(true)
    binarySearchTree.insert(2)['success'].should eq(true)
    binarySearchTree.search(1).value.should eq(1)
    binarySearchTree.search(2).value.should eq(2)
 end
  
  it 'adds three nodes to a binary search tree' do
    binarySearchTree = BinarySearchTree.new(Fixnum)
    binarySearchTree.insert(2)['success'].should eq(true)
    binarySearchTree.insert(1)['success'].should eq(true)
    binarySearchTree.insert(3)['success'].should eq(true) 
    binarySearchTree.search(3).value.should eq(3)
    binarySearchTree.search(2).value.should eq(2)
    binarySearchTree.search(1).value.should eq(1)
  end

  it 'should only allow acceptable types' do
    binarySearchTree = BinarySearchTree.new(Fixnum)
    returnValue = binarySearchTree.insert('someString')
    returnValue['success'].should eq(false)
    returnValue['errorMessage'].should eq('Invalid input value type')
  end
  
  it 'should return map with success equal to false' do
    binarySearchTree = BinarySearchTree.new(Fixnum)
    binarySearchTree.insert(3)['success'].should eq(true) 
    returnValue = binarySearchTree.insert(3)
    returnValue['success'].should eq(false)
    returnValue['errorMessage'].should eq('Element already exists')
  end

  
end
