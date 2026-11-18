# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names Ayman Arefin

## Summary



## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 \* Count?

I built 2 counters by using full adder and D flipflop for the frst one T flip flops for the second one.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

On the first clock, the first stage goes from 0 to 1 and tha clocks the second stage which clocks the third and so on.

### 3 - What width of ring counter would you use to get to an output of \~1KHz?

Starting from 100MHz we need to divide to !KHz which is dividing by 100,000. Taking log base 2 of that gives us around 17 which gives 763Hz. So we would need a 17bit ripple counter or 16bit depending on if a output of more than 1KHz is more desirable rather than less than.

