# run this code with command `ruby treasure_hunting.rb`

# Node Type Struct
class Node
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
  end
end

# Build Tree
class Path
  attr_accessor :root

  def initialize
    @path = Node.new('*') # initialize root path
    @root = @path
    build_path
  end

  def build_path
    # Build the route Path here
    # This path is same as the path provided by the question
    @path.right = Node.new('*') # path branching
    @path.right.right = Node.new('*') # path branching
    @path.right.left = Node.new('*') # path branching
    @path.right.right.right = Node.new('*') # path branching
    @path.right.right.left = Node.new('*') # path branching
    @path.right.left.right = Node.new('*') # path branching
    @path.right.left.left = Node.new('* end') # end of path
    @path.right.right.right.right = Node.new('* end') # end of path
    @path.right.right.left.right = Node.new('*') # path branching
    @path.right.right.left.left = Node.new('* end') # end of path
    @path.right.right.left.right.right = Node.new('* end') # end of path
    @path.right.right.left.right.left = Node.new('gold') # end of path with treasure in it
  end

  def search(value)
    @search_count = 0
    loop_from_node(value)
    result = @search_count == 1 ? 'Harta Karun' : 'Anda tertipu' # check if only one treasure find on the end of the path
    p result
  end

  def loop_from_node(value, node = root)
    return if node.nil?

    if node.left.nil? && node.right.nil? # check if this end of path
      @search_count += 1 if node.value == value # check if the value of the node is same as the treasure name
    else
      loop_from_node(value, node.left)
      loop_from_node(value, node.right)
    end
  end
end

path = Path.new
path.search('gold') # Search Treasure name
