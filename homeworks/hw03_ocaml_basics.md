# Homework03: OCaml Basics

## Exercise 1: Toplevel (1 point)

Find the `#` prompt in the OCaml toplevel. The prompt is not part of the OCaml language. Type `42;;` after the prompt. Your toplevel may or may not generate the double semicolon `;;` automatically.

Explain in English the role of the double semicolon `;;` in OCaml.

## Exercise 2: Expressions (27 points)

### Built-in Types

Consider the following expressions:

1. `42`
2. `42.1`
3. `"hello"`
4. `true`
5. `()`
6. `'a'`

Type each expression at the toplevel, followed by `;;` if it is not generated automatically. Record the evaluation result and type of each expression in the table below.

| Expression | Type | Evaluation |
| --- | --- | --- |
| `42` |  |  |
| `42.1` |  |  |
| `"hello"` |  |  |
| `true` |  |  |
| `()` |  |  |
| `'a'` |  |  |

### Functions

Consider the following expressions:

7. `print_endline`
8. `fun x -> x + 1`
9. `fun x y -> x + y`
10. `(+)`
11. `( +. )`
12. `(^)`

Type each expression at the toplevel, followed by `;;` if it is not generated automatically. Record the evaluation result and type of each expression in the table below. For functions such as `fun x -> x * x`, write `<fun>` as the evaluation result.

| Expression | Type | Evaluation |
| --- | --- | --- |
| `print_endline` |  |  |
| `fun x -> x + 1` |  |  |
| `fun x y -> x + y` |  |  |
| `(+)` |  |  |
| `( +. )` |  |  |
| `(^)` |  |  |

### Function Evaluations

Consider the following expressions:

13. `(fun x -> x + 1) 3`
14. `(fun x y -> x + y) 2 3`
15. `(fun x y -> x + y) 2`
16. `let x = 3 in x + 1`
17. `let y = 3 in let x = 2 in x + y`
18. `print_endline "hi"`

Type each expression at the toplevel, followed by `;;` if it is not generated automatically. Record the evaluation result and type of each expression in the table below.

| Expression | Type | Evaluation |
| --- | --- | --- |
| `(fun x -> x + 1) 3` |  |  |
| `(fun x y -> x + y) 2 3` |  |  |
| `(fun x y -> x + y) 2` |  |  |
| `let x = 3 in x + 1` |  |  |
| `let y = 3 in let x = 2 in x + y` |  |  |
| `print_endline "hi"` |  |  |

## Exercise 3: Definitions (12 points)

Consider the following definitions:

1. `let x = 3`
2. `let s = "hello"`
3. `let a = ()`
4. `let b = true`
5. `let f = fun x -> x + 1`
6. `let f x = x + 1`
7. `let f = fun x y -> x + y`
8. `let f x y = x + y`

Type each definition at the toplevel, followed by `;;` if it is not generated automatically. Record which variable is defined, its type, and its evaluation result in the table below.

| Definition | Defined variables | Type | Evaluation |
| --- | --- | --- | --- |
| `let x = 3` |  |  |  |
| `let s = "hello"` |  |  |  |
| `let a = ()` |  |  |  |
| `let b = true` |  |  |  |
| `let f = fun x -> x + 1` |  |  |  |
| `let f x = x + 1` |  |  |  |
| `let f = fun x y -> x + y` |  |  |  |
| `let f x y = x + y` |  |  |  |

## Exercise 4: Putting It All Together (10 points)

1. Define an OCaml function `avg` that computes the average of two floating-point numbers.

2. Complete the function `gcd` of type `int -> int -> int` using the Euclidean algorithm:

   - `gcd(u, 0) = u`
   - `gcd(u, v) = gcd(v, u mod v)` otherwise

   ```ocaml
   let rec gcd u v =
     0 (* To complete *)
   ```

   Test your function with the following code:

   ```ocaml
   let () = Printf.printf "%d\n" (gcd 8 12)
   let () = Printf.printf "%d\n" (gcd 48 18)
   ```

## Exercise 5: Taylor Expansion (30 points)

1. Research how to write comments in OCaml. Then explore the exponentiation operator `**` in OCaml. What is its type signature? Record your answer as an OCaml comment.

   **Hint:** In the toplevel, type `( **);;` to determine the type. The space before `**` ensures that it is not interpreted as the beginning of a comment.

2. Implement a factorial function `factorial` with the type signature `int -> int`. For example, evaluating the factorial of 5 should produce 120. Complete the following definition:

   ```ocaml
   let rec factorial n =
     (* TODO *)
   ```

3. Design a Taylor expansion function `taylor` with the type `float -> int -> float`. The function should compute the Taylor expansion of $e^x$ around 0 using the first `n` terms. The call `taylor 0.1 3` should return exactly `1.105`. The call `taylor 0.1 10` should return a value close to, but different from, `1.105`.

   Include your implementation below and record the result of `taylor 0.1 10` as a comment.

   ```ocaml
   let rec taylor x n =
     (* TODO *)

   (* Result of taylor 0.1 10 is TODO *)
   ```

## Exercise 6: Tower of Hanoi (20 points)

Play the [Tower of Hanoi game](https://www.mathsisfun.com/games/towerofhanoi.html) to familiarize yourself with its rules.

Implement a function `move` of type

```ocaml
int -> string -> string -> string -> unit
```

The function `move n src dst aux` should move `n` disks from `src` to `dst` using `aux` as the auxiliary peg.

Use the following recursive strategy:

- If `n` is 1, print the movement from `src` to `dst`.
- Otherwise:
  1. Move `n - 1` disks from `src` to `aux`.
  2. Move one disk from `src` to `dst`.
  3. Move `n - 1` disks from `aux` to `dst`.

Use `Printf.printf "Move from %s to %s\n"` to print each movement. For a sequence of expressions, use `begin ... end`; for example, `begin move ...; move ...; move ... end`.

Complete the following definition:

```ocaml
let rec move n src dst aux =
  (* TODO *)

(* For testing *)
let test () =
  move 3 "A" "C" "B"

let _ = test ()
```

If the code is saved in a file named `hanoi.ml`, run it with `ocaml hanoi.ml`. The expected output is:

```text
Move from A to C
Move from A to B
Move from C to B
Move from A to C
Move from B to A
Move from B to C
Move from A to C
```
