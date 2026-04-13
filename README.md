# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

## Summary

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

The output is toggled every time it reaches the value of count. It has 
to do this twice within a cycle.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

The flip flops initially start at 0, when the first clock pulse happens
the outputs go from 0 to 1 as it moves through the ring counter.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

I would use a width of 17 bits. If you take a clock with a 100 MHz and divide it
by 2^17 you roughly get 763 Hz which is the closest approximation to 1KHz.
