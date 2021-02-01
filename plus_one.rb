#https://leetcode.com/problems/plus-one/submissions/
#
# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  x = digits.length - 1
  while x >= 0
    digits[x] += 1
    return digits if digits[x] <= 9
    digits[x] = 0
    digits.unshift(1) if x == 0
    x -= 1
  end
  return digits
end
