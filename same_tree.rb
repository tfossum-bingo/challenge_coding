# https://leetcode.com/problems/same-tree/submissions/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  return check_node(p, q)
end

def check_node(node_p, node_q)
  return true if node_p.nil? and node_q.nil?
  return false if node_p.nil? != node_q.nil?
  if node_p.val != node_q.val
    return false
  end

  next_nodes = check_node(node_p.left, node_q.left)
  next_nodes = check_node(node_p.right, node_q.right) if next_nodes == true

  return next_nodes
end