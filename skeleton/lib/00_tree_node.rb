class PolyTreeNode

  attr_accessor :children, :parent, :value

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  # def parent
  #   #method that returns the node's parent
  #   #child = PolyTreeNode.new(@value)
  #   parent=(@parent)
  #
  # end
  def parent=(parent_node=nil)
    # if parent_node.nil?
    @parent = parent_node
    #emove_child(parent_node) if parent_node.nil?
    #add_child(parent_node) if parent_nod.nil?
  #  add_child(parent_node)
    #add_child(parent_node)
    #parent.children << child_node unless parent.children.include?(child_node)
    #   add_child(self)
    # else
    #   remove_child(parent_node)
    # end
    #parent_node.parent = parent_node
  end

  def add_child(child_node)
    if child_node.parent == nil
      parent.children << child_node unless parent.children.include?(child_node)
    end
    parent=(child_node)
    # unless self.children.include?(child_node)
    #   parent.children << child_node
    # end
  end

  def remove_child(child_node)
    parent=(child_node).nil? ? raise : child_node.parent = nil
  end



    #return add_child(child_node)

    #@children << child_node unless @children.include?(child_node)
    # print @children
    # add_child(child_node) unless children.include?(child_node)
  #   @children.each_with_index do |child, indx|
  #     until child == @children || indx == @children.length - 1
  #       rturn @children[indx + 1]
  #     end
  #   end
  #   #print child_node
  # end

  def value
    #method that returns the value stored at the node
    @value
  end

  def bfs(target_value)
    bfs_arr = []
    bfs_arr << self
    until bfs_arr.length


  end

  def dfs(target_value)
    #recursive
    nil if self.value != target_value
    if self.value == target_value      #include?(target_value)
      return self
    else
      self.children.each do |child|
        child.dfs(target_value)
      end
    end
    self
  end
end



  # PolyTreeNode#parent= should set a node's parent to the passed node
# PolyTreeNode#parent= should add the child node to the passed node's children
 # PolyTreeNode#parent= does not add the same node twice
 # PolyTreeNode#parent= handles nil without issue
#parent= when reassigning should set the node's parent to the new parent
# PolyTreeNode#parent= when reassigning should add the node to the new parent's children
# PolyTreeNode#parent= when reassigning should remove the node from its old parent's children
