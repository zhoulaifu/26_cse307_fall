(*
Homework04: OCaml Data Types

Submit your completed solution as a single .ml file on Brightspace. Do not
submit a PDF. Fill in every `failwith "Not Implemented"` expression and keep
the provided `time` record declaration unchanged. Your file must compile to
receive credit, so check it with OCaml before submitting.

Total: 100 points
*)

(* Part I: Time and Records (50 points) *)

(* Exercise 1 (10 points)

Write a function `seconds_since_midnight` of type
int -> int -> int -> int that returns the number of seconds elapsed since
midnight. The arguments are hours, minutes, and seconds.

Your function should satisfy these examples:

  seconds_since_midnight 0 0 0 = 0
  seconds_since_midnight 1 0 0 = 3600
  seconds_since_midnight 0 30 15 = 1815
  seconds_since_midnight 3 45 20 = 13520
*)

let seconds_since_midnight h m s =
  failwith "Not Implemented"


(* Do not change this type declaration. *)
type time = { hour : int; minute : int; second : int }

(* Exercise 2 (10 points)

Write a function `seconds_since_midnight2` of type `time -> int`.

Your function should satisfy these examples:

  seconds_since_midnight2 {hour = 0; minute = 0; second = 0} = 0
  seconds_since_midnight2 {hour = 12; minute = 0; second = 0} = 43200
  seconds_since_midnight2 {hour = 5; minute = 30; second = 15} = 19815
*)

let seconds_since_midnight2 t =
  failwith "Not Implemented"


(* Exercise 3 (10 points)

Write a function `seconds_to_time` of type `int -> time`. It takes the number
of seconds elapsed since midnight and returns the corresponding time.

Your function should satisfy these examples:

  seconds_to_time 0 = {hour = 0; minute = 0; second = 0}
  seconds_to_time 3600 = {hour = 1; minute = 0; second = 0}
  seconds_to_time 43200 = {hour = 12; minute = 0; second = 0}
  seconds_to_time 3661 = {hour = 1; minute = 1; second = 1}
*)

let seconds_to_time sec =
  failwith "Not Implemented"


(* Exercise 4 (10 points)

Write a function `time_diff` of type `time -> time -> int` that calculates
the number of seconds elapsed from `t1` to `t2`. The times may cross midnight.

Your function should satisfy these examples:

  time_diff {hour = 1; minute = 0; second = 0}
            {hour = 1; minute = 0; second = 0} = 0
  time_diff {hour = 1; minute = 0; second = 0}
            {hour = 2; minute = 0; second = 0} = 3600
  time_diff {hour = 23; minute = 59; second = 0}
            {hour = 0; minute = 1; second = 0} = 120
*)

let time_diff t1 t2 =
  failwith "Not Implemented"


(* Exercise 5 (10 points)

Write a function `tick` of type `time -> time` that increments the given time
by one second.

Your function should satisfy these examples:

  tick {hour = 0; minute = 0; second = 59}
    = {hour = 0; minute = 1; second = 0}
  tick {hour = 1; minute = 59; second = 59}
    = {hour = 2; minute = 0; second = 0}
  tick {hour = 23; minute = 59; second = 59}
    = {hour = 0; minute = 0; second = 0}
*)

let tick t =
  failwith "Not Implemented"


(* Part II: Arithmetic Expressions and Lists (50 points) *)

(* The following type represents simple arithmetic expressions. *)
type exp =
  | Int of int
  | Add of exp * exp
  | Mul of exp * exp

(* Exercise 1 (12 points)

Encode each arithmetic expression as a value of type `exp`:

1. 10 + 5
2. (2 + 3) * 5
3. 3 * 0 * 3 * 5
*)

let expression1 = failwith "Not Implemented"

let expression2 = failwith "Not Implemented"

let expression3 = failwith "Not Implemented"


(* Exercise 2 (13 points)

Write a function `eval` of type `exp -> int` that evaluates an expression to
an integer.
*)

let rec eval (e : exp) : int =
  failwith "Not Implemented"


(* Exercise 3 (13 points)

Write a function `print` of type `exp -> string` that represents an
expression using infix notation and parentheses.

Examples:

  print (Add (Int 10, Int 5)) = "(10 + 5)"
  print (Mul (Add (Int 2, Int 3), Int 5)) = "((2 + 3) * 5)"
  print (Mul (Mul (Int 3, Int 0), Mul (Int 3, Int 5)))
    = "((3 * 0) * (3 * 5))"
*)

let rec print (e : exp) : string =
  failwith "Not Implemented"


(* Exercise 4 (12 points)

Write a function `is_sorted` of type `int list -> bool` that determines
whether a list of integers is sorted in ascending order.
*)

let rec is_sorted (lst : int list) : bool =
  failwith "Not Implemented"
