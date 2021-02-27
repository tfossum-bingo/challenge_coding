#https://leetcode.com/problems/minimum-depth-of-binary-tree/submissions/

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
def min_depth(root)
  return check_depth(root)
end

def check_depth(node)
  return 0 if node.nil?

  depths = []

  left_depth = check_depth(node.left)
  right_depth = check_depth(node.right)

  depths << left_depth unless left_depth == 0
  depths << right_depth unless right_depth == 0

  min_depth = 1
  min_depth += depths.min unless depths.empty?

  return min_depth
end

