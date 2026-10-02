# Lab 05 - Combinatorial Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Ayman Arefin

## Lab Summary
We first simplified 2 truth tables using Kmap then we put the expression into circuit A and B. Then we created code for top file in vivado to include output for circuit_a as the input for A in circuit B.
## Lab Questions

### 1 - Explain the role of the Top Level file.
The top level file is the file that actually runs. It takes in information from other files and converts then into a language that can be understood by the computer.
### 2 - Explain the function of the Constraints file.
the constraint file picks which switches/leds/components to activate or keep deactivated.

### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?

For the first circuit I would have used Minterms as there are fewer Minterms than Maxterms so the final equation is more simple.
For circuit B using Minterms is correct as there are equal number of Minterms as Maxterms.