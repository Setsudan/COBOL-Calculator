# Cobol calculator

This is a simple calculator written in Cobol. It can add, subtract, multiply and divide two numbers.
additionaly depending on if the number is odd or even it will display a message.

## Why ?

A friend didn't believe me when I said I could write a calculator in Cobol.
Guess who's gramps taught him Cobol in 2010 ?

## How to run

We'll use docker to run the program even tho it's overkill for a simple calculator.

once the repo is cloned. Change directory to the root of the project and run the following command:

```bash
docker build -t cobol-calculator .
docker run -it cobol-calculator
```

This will build the docker image and run the program.

## How to use

To use the Cobol calculator, follow these steps:

1. Run the program as described in the "How to run" section.
2. When prompted, enter the first number.
3. Enter the operator you want to use (`+`, `-`, `*`, or `/`).
4. Enter the second number.
5. The program will display the result and indicate whether it is odd or even.

Example usage:

```txt
Enter first number: 10
Enter operator (+, -, *, /): +
Enter second number: 5
Result: 15 (ODD)
```

Thank you for visiting !
