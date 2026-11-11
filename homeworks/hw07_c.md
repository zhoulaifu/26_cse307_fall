# Homework 07: C

**Total: 100 points**

Include code and explanations where appropriate. Show your code in your submission; you do not need to submit an executable.

## Question 1: The `extern` Keyword (20 points)

What does the `extern` keyword do in C? Explain with a code example involving **two files** that demonstrates how `extern` allows a variable to be shared across files.

## Question 2: Octal Integer Literals (20 points)

What is the decimal value of the octal literal `023` in C? Write a short C program using `printf` to show the output. Explain how octal integer literals work in C.

## Question 3: The `static` Storage Class (20 points)

Write a C function that uses a `static` variable. Call the function **two times** from `main` and explain the output and the variable's behavior across calls.

## Question 4: Pointer Arithmetic (20 points)

Suppose `double *p` points to address `0x1000` on a system where `sizeof(double)` is 8 bytes. Assume the address is valid and `p++` remains within the same array or one past its end.

What is the address after `p++`? Explain how pointer arithmetic works for `double *` values.

## Question 5: Floating-Point Precision (20 points)

The following C function may print `"Unexpected"`:

```c
void check_sum(double x) {
    int integral = (int)x;
    double decimal = x - integral;

    double sum = 0;
    for (int i = 1; i <= integral; i++) {
        sum += i;
    }

    if (sum + decimal == 11) printf("Unexpected");
}
```

Assume IEEE 754 binary64 arithmetic for `double`, with rounding to nearest and ties to even, and that each operation is rounded to `double` precision.

Find a **non-integer** value of `x` for which the function prints `"Unexpected"`. Give the value exactly enough to identify the binary64 value, for example using a hexadecimal floating-point literal or `nextafter` from `<math.h>`. Explain why the comparison succeeds in terms of floating-point precision and rounding.
