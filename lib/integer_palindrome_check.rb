# Thought process:
# step 1: reverse the integer
# step 2: compare the reversed integer to the given number
# Time Complexity: O(m)
# Space complexity: O(n)

def is_palindrome(number)
  return false if number.class != Integer || number < 0

  # create a varibale to store the result number
  result = 0
  prev_result = 0
  copy_num = number

  while copy_num != 0
    current_digit = copy_num % 10
    result = result * 10 + current_digit

    # This is to handle overflow
    return false if ((result - current_digit) / 10) != prev_result

    prev_result = result
    copy_num = copy_num / 10
  end
  return result == number
end
