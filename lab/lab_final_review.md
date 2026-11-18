# CSE 307: Principles of Programming Languages

## Final Review Exercises

These exercises are adapted from the [CS 421 exam materials](https://courses.grainger.illinois.edu/cs421/su2009/exams/), University of Illinois Urbana-Champaign.

## Part 1: OCaml Types

Give the type of each of the following OCaml functions. In these examples, `hd` and `tl` refer to `List.hd` and `List.tl`.

### Exercise 1

```ocaml
let alwaysfour x = 4
```

Answer: ________________________________________________

### Exercise 2

```ocaml
let add x y = x + y
```

Answer: ________________________________________________

### Exercise 3

```ocaml
let concat x y = x ^ y
```

Answer: ________________________________________________

### Exercise 4

```ocaml
let addmult x y = (x + y, x * y)
```

Answer: ________________________________________________

### Exercise 5

```ocaml
let rec f x = if x = [] then [] else hd x @ f (tl x)
```

Answer: ________________________________________________

### Exercise 6

```ocaml
let rec copy x = if x = [] then [] else hd x :: copy (tl x)
```

Answer: ________________________________________________

### Exercise 7

```ocaml
let b (x, y) = x + y
```

Answer: ________________________________________________

### Exercise 8

```ocaml
let c (x, y) = x
```

Answer: ________________________________________________

### Exercise 9

```ocaml
let d x = match x with (a, b) -> a
```

Answer: ________________________________________________

### Exercise 10

```ocaml
let e x = hd x + 1
```

Answer: ________________________________________________

### Exercise 11

```ocaml
let f x y = match x with [] -> 0 | a :: b -> a + y
```

Answer: ________________________________________________

### Exercise 12

```ocaml
let g (a, b) (c, d) = (a + d, b ^ c)
```

Answer: ________________________________________________

### Exercise 13

```ocaml
let rec h x = match x with [] -> 0 | (a, b) :: r -> a + h r
```

Answer: ________________________________________________

Recall that `^` is the string concatenation operator.

## Part 2: OCaml Lists

Define the following OCaml functions:

### Exercise 1

`contains : 'a -> 'a list -> bool` returns `true` if and only if the list contains the given element. Do not use any pre-existing functions.

```ocaml
contains 4 [3; 4; 5] = true
```

```ocaml








```

### Exercise 2

`evens : 'a list -> 'a list` returns the second, fourth, and subsequent even-positioned elements of its argument.

```ocaml
evens [13; 5; 9; 0; 7; 8] = [5; 0; 8]
```

```ocaml








```

### Exercise 3

`partition : int list -> int list list` divides a list into runs of the same integer. You may define auxiliary functions.

```ocaml
partition [9; 9; 5; 6; 6; 6; 3] = [[9; 9]; [5]; [6; 6; 6]; [3]]
```

```ocaml








```

### Exercise 4

Define `genlist` so that `genlist m n = [m; m + 1; ...; n]`, or `[]` if `m > n`.

```ocaml








```

### Exercise 5

`compress : int list -> (int * int) list` replaces each run of the same integer with a pair containing the count and the integer.

```ocaml
compress [1; 1; 5; 6; 6; 6; 3] = [(2, 1); (1, 5); (3, 6); (1, 3)]
```

```ocaml








```

### Exercise 6

`apply : string -> int list -> int` applies the operator described by the string to the elements of the list. The string is either `"times"` or `"plus"`. Assume the list is nonempty.

```ocaml
apply "times" [2; 3; 4] = 24
```


```ocaml








```

## Part 3: Binary Trees

Suppose we have the following type and example tree:

```ocaml
type btree = Leaf of int | Node of int * btree * btree

let t = Node (1, Node (2, Leaf 4, Leaf 5), Node (3, Leaf 6, Leaf 7))
```

Define the following OCaml functions:

### Exercise 1

`preorder : btree -> int list` returns the labels in preorder.

```ocaml
preorder t = [1; 2; 4; 5; 3; 6; 7]
```

```ocaml








```

### Exercise 2

`followpath : btree -> bool list -> int list` returns the labels on the path described by the Boolean list, where `true` means follow the left child and `false` means follow the right child. Assume the path exists.

```ocaml
followpath t [true; false] = [1; 2; 5]
```

```ocaml








```

### Exercise 3

`height : btree -> int` returns the length of the longest path from the root to a leaf.

```ocaml
height t = 2
```

```ocaml








```

### Exercise 4

`balanced : btree -> bool` returns `true` if, at every internal node, the heights of its children differ by at most 1.

```ocaml
balanced t = true
balanced (Node (1, Leaf 2, Node (3, Leaf 6, Leaf 7))) = true
balanced (Node (1, Leaf 2, Node (3, Leaf 6, Node (8, Leaf 7, Leaf 9)))) = false
```


```ocaml








```

## Part 4: Concrete and Abstract Syntax Trees

Given the grammar:

```text
E -> E + T | T
T -> T * P | P
P -> id | ( E )
```

and the OCaml type for concrete syntax trees:

```ocaml
type tree = Node of string * tree list
```

For example, the concrete syntax tree for `id + id` can be represented as:

```ocaml
Node ("E", [Node ("E", [Node ("T", [Node ("P", [Node ("id", [])])])]);
            Node ("+", []);
            Node ("T", [Node ("P", [Node ("id", [])])])])
```

Here is a type for abstract syntax:

```ocaml
type exp = Id of string | Plus of exp * exp | Times of exp * exp
```

### Exercise 1

Write a function `abstract : tree -> exp` to transform a concrete syntax tree into an abstract syntax tree.

```ocaml














```

## Part 5: Decimal and Hexadecimal Constants

A decimal constant is any sequence of one or more decimal digits, including one starting with zero. A hexadecimal constant has the form `0xW`, where `W` is a sequence of one or more decimal digits or the letters `A`–`F`.

### Exercise 1

Write a regular expression to recognize either a decimal or a hexadecimal constant.

Answer:

<br>

<br>

<br>

<br>



## Part 6: Lists in Square Brackets

### Exercise 1

Write a regular expression for the language of semicolon-separated lists of `a` and `b` in square brackets. Examples of strings in the language are `[]`, `[a]`, and `[a;b;a;a]`.

Answer:

<br>

<br>

<br>

<br>


