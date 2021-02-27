#https://leetcode.com/problems/maximum-depth-of-binary-tree/submissions/
#
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  return measure_depth(root)
end

def measure_depth(node)
  return 0 if node.nil?
  max_left = 1 + measure_depth(node.left)
  max_right = 1 + measure_depth(node.right)

  current_max_depth = [max_left, max_right].max
  return current_max_depth

end

