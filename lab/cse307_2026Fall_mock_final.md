# CSE 307: Principles of Programming Languages

## Mock Final Exam — Fall 2026

**Time:** 150 minutes  
**Total:** 100 points

Name: ____________________________________  Student ID: ______________________

This practice exam is based on the CSE 216 final. Show your reasoning for grammar and regular expression questions, and include complete function definitions for programming questions. Equivalent correct solutions are accepted.

## Problem 1: Regular Expressions (10 points)

Over the alphabet `{0, 1}`, consider the language of nonempty strings that start and end with the same symbol and contain at least one `1`. A single `1` is accepted. Examples include `1`, `11`, `010`, and `101`; `0`, `00`, `01`, and the empty string are rejected.

Write a regular expression that matches exactly this language. State any notation you use beyond union, concatenation, parentheses, and Kleene star.

<br><br><br><br><br><br>

## Problem 2: Context-Free Grammars (10 points)

Write a context-free grammar for the language over `{0, 1}` consisting of all strings with an equal number of `0`s and `1`s. The symbols may occur in any order, and the empty string is included. State the start symbol and explain briefly why your grammar generates the language.

<br><br><br><br><br><br><br>

## Problem 3: OCaml Types (10 points)

For each independent definition, give the type that OCaml infers. Equivalent type-variable names are accepted. Each definition is worth 2 points.

1. `let pair_with f x = (x, f x)`
2. `let choose b x y = if b then Some x else y`
3. `let combine (x, y) = (x + 1, y ^ "!")`
4. `let apply_twice f x = f (f x)`
5. `let rec total xs = match xs with [] -> 0 | (_, n) :: rest -> n + total rest`

<br><br><br><br><br><br><br><br>

## Problem 4: Lambda Calculus (10 points)

Find the beta-normal form of each expression. Rename bound variables when needed to avoid capture; alpha-equivalent answers are accepted. Each expression is worth 5 points.

1. `(λx. λy. x y) y`
2. `(λf. λx. f (f x)) (λz. z a) b`

<br><br><br><br><br><br><br><br>

## Problem 5: OCaml Lists and Tail Recursion (15 points)

Write `find_last : 'a -> 'a list -> int option`. Return the zero-based index of the last element equal to the first argument, or `None` if it does not occur. Use a tail-recursive helper and no built-in list functions. Assume the elements are values for which OCaml's polymorphic equality is defined.

```ocaml
find_last "a" ["b"; "a"; "c"; "a"] = Some 3
find_last 7 [1; 2; 3] = None
find_last 7 [] = None
```

```ocaml












```

## Problem 6: Binary Trees (15 points)

Consider the type:

```ocaml
type btree = Leaf of int | Node of int * btree * btree
```

Write `at_depth : int -> btree -> int list`. Return the values of all nodes at the specified depth, from left to right. The root has depth 0. Return `[]` for a negative depth or a depth beyond the tree.

```ocaml
let t = Node (1, Node (2, Leaf 4, Leaf 5), Leaf 3)
at_depth 0 t = [1]
at_depth 2 t = [4; 5]
at_depth 3 t = []
```

You may use list concatenation (`@`).

```ocaml












```

## Problem 7: Arithmetic Expressions (15 points)

Consider the following OCaml type:

```ocaml
type expression =
  | Number of int
  | Add of expression * expression
  | Multiply of expression * expression
  | Divide of expression * expression
```

Write `evaluate : expression -> int option`. Return `Some result` for a successful evaluation and `None` if any subexpression divides by zero. Use OCaml integer division, which truncates toward zero. Assume arithmetic does not overflow.

```ocaml
evaluate (Add (Number 5, Divide (Number 8, Number 2))) = Some 9
evaluate (Multiply (Number 0, Divide (Number 1, Number 0))) = None
evaluate (Divide (Number (-7), Number 2)) = Some (-3)
```

```ocaml
















```

## Problem 8: C Strings (15 points)

Write the C function `int hide_digits(char *s)`. Replace every ASCII digit (`'0'` through `'9'`) in the null-terminated string with `'*'`, and return the number of characters replaced. Leave all other characters and the terminating null character unchanged.

Modify the string in place. Assume `s` points to a writable, null-terminated character array; do not use C library functions.

```c
char s[] = "A12-b3!";
int count = hide_digits(s);
/* s is now "A**-b*!" and count is 3. */
```

```c











```
