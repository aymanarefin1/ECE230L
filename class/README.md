# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names

Ayman Arefin

## Summary

In this lab we used vivado to simulate subtraction and negative numbers. We built a half subtractor, a four bit One's compliment adder and a eight bit twos compliment converter and  then wired them together in top.V

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

The second input in the half adders carry is A AND B while the subtractors borrow is \~A AND B

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?

The carry out of the top bit has to be added back into the lowest bit which takes a second addition. Wiring it straight back creates a combinational loop so a separate a adder stage is needed

### 3 - What is the edge case and problem with Two’s Complement number representation?

The most negative number has no positive counterpart so taking its twos compliment returns the same number so negating it gives a wrong result.

