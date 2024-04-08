---
Title: Data Annotations Notes
Date: 4.8.24 1:45am CT
---

### Question 1: Evaluating Programming Best Practices
**Answer: B**

Solution B implements good decoupling concepts (3 distinct functions with individual tasks), whereas Solution A runs in excessive time and space; namely O(n^3). Solution C works, but is sloppy -- tasks are tightly coupled, and readability is not as succinct.

### Question 2: Identifying a function's time and space efficiency
**Answer: C**

Function A does not provide a correct result for determining prime numbers. Function B does provide a correct result, but uses unnecessary space in creating the "factors" array: O(~n). Function C provides the proper result while minimizing memory usage and execution time.

### Question 3: Coding Task Problem Solving
```bash
initialize an empty dictionary frequency_map

while n is greater than 0

digit = n mod 10

if digit is not in frequency_map keys

add digit to frequency_map with an initial value of 1

else add 1 to the value of digit in frequency_map

n = integer part of (n / 10)
```

### Question 4: Side By Side Response Comparisons - General Replies
Answer: Response A is better to provide than Response B

Privacy and security are ever increasing concerns. Several grey areas exists, but there are laws in the U.S. and GDPR, etc., that provide strict regulations against privacy invasion. Politely informing the inquirer about this is the better response.

### Question 5: Side By Side Response Comparisons - Coding Replies
- Show responses in Python
Answer: Response B is more helpful

At first glance, the explanation given by the AI in Response A is more informative, especially to a novice programmer; however, the implementation of its solution is incorrect. The "step" and "subsets" variables are re-initialized during each iteration. The explanation in Response B is displays brevity which may or may not be a good thing, depending on the programmer's experience. Regardless, the code it provides is correct.

### Coding exercise (see code/Python/...)
