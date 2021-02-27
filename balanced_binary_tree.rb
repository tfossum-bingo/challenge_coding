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
# @return {Boolean}
def is_balanced(root)
  result = check_balanced(root).last
  return result
end

def check_balanced(node)
  return [0, true] if node.nil?

  left_result = check_balanced(node.left)
  right_result = check_balanced(node.right)
  return [0, false] if (left_result.last == false or right_result.last == false)

  left_depth = 1 + left_result.first
  right_depth = 1 + right_result.first
  max_depth = [left_depth, right_depth].max
  imbal_val = (left_depth - right_depth).abs
  imbal_result = imbal_val <= 1


  return [max_depth, imbal_result]

end
