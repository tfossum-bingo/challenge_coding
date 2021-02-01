# @param {String} s
# @return {Boolean}
def is_valid(s)
  opens = ['(', '{', '[']
  open_stack = []
  compliment = {')' => '(', '}' => '{', ']' => '[' }

  x = 0

  while x < s.length do
    if opens.include?(s[x])
      open_stack.push s[x]
      x += 1
      next
    else
      if open_stack.last == compliment[s[x]]
        open_stack.pop()
        x += 1
      else
        return false
      end
    end
  end
  return true if open_stack.empty?
  return false
end
