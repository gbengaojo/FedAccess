# O(N)
import unittest

def pal_perm(pharase):
  '''function checks if a string is a permutation of a palindrome or not'''
  table = [0 for _ in range(ord'z') - ord('a') + 1)]
  countodd = 0
  for c in phrase:
    x = char_number(c)
    if x != -1:
      table[x] += 1
      if table[x] % 2:
        countodd += 1
      else:
        countodd -= 1

  return countodd <= 1
