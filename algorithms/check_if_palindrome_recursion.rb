def first_character(str)
  str.slice!(0,1)
end

def last_character(str)
  str.slice!(-1)
end

def middle_characters(str)
  str.slice!(0)
  str.slice!(-1)
end

def is_palindrome(str)
  if str.length == 0 || str.length == 1
    p true
  elsif first_character(str) != last_character(str)
    p false
  else
    is_palindrome(middle_characters(str))
  end
end

is_palindrome('racecar')
