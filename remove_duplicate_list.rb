#https://leetcode.com/problems/remove-duplicates-from-sorted-list/submissions/
#

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  return head if head.nil?
  new_head = ListNode.new(head.val)
  new_tail = new_head

  while !head.nil?
    if new_tail.val != head.val
      temp_node = ListNode.new(head.val)
      new_tail.next = temp_node
      new_tail = temp_node
    end
    head = head.next
  end

  return new_head

end
