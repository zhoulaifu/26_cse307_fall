(*
Homework 06: Higher-Order Functions and Tail Recursion

Submit your completed solution as a single .ml file on Brightspace.
Replace each `failwith "Not Implemented"` placeholder with your implementation.
Keep the provided function names and tests unchanged. Check that your file
compiles and that all tests pass before submitting. The tests illustrate the
requirements; your functions must also work for other valid inputs.

Follow the implementation restrictions in each exercise. Do not use mutable
references, arrays, or loops. Assume integer calculations do not overflow.
Assume supplied functions have no side effects and return normally on the
inputs where they are used. Each function must have the type specified below.

Total: 100 points
*)

(* Exercise 1: Function Composition (10 points)

Write `compose : ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c` such that
`compose f g x` returns f (g x). Do not use recursion or library functions.
*)
let compose f g x =
  failwith "Not Implemented"

let test_compose () =
  assert (compose (fun x -> x * 2) (fun x -> x + 3) 4 = 14);
  assert (compose String.length (fun s -> s ^ "!") "OCaml" = 6);
  assert (compose (fun b -> not b) (fun n -> n > 0) (-1) = true);
  Printf.printf "All tests for compose passed!\n"


(* Exercise 2: Filtering and Mapping (15 points)

Write `transform_if : ('a -> bool) -> ('a -> 'b) -> 'a list -> 'b list`.
Keep exactly the elements satisfying the predicate, apply the transformation
to each retained element, and preserve their original order.

Use List.filter and List.map. Do not write recursive functions or use folds.

Example:

  transform_if (fun n -> n > 0) (fun n -> n * n) [-2; 3; 0; 1]
    = [9; 1]
*)
let transform_if predicate transform lst =
  failwith "Not Implemented"

let test_transform_if () =
  assert (transform_if (fun n -> n > 0) (fun n -> n * n)
            [-2; 3; 0; 1] = [9; 1]);
  assert (transform_if (fun s -> String.length s > 1) String.length
            ["a"; "cat"; ""; "ox"] = [3; 2]);
  assert (transform_if (fun _ -> false) (fun n -> n + 1) [1; 2] = []);
  assert (transform_if (fun _ -> true) (fun n -> n + 1) [] = []);
  Printf.printf "All tests for transform_if passed!\n"


(* Exercise 3: Partitioning with fold_right (20 points)

Write `partition_right : ('a -> bool) -> 'a list -> 'a list * 'a list`.
Return a pair: the first list contains the elements satisfying the predicate,
and the second contains the remaining elements. Preserve the input order
within both lists, including duplicate elements.

Use exactly one List.fold_right over the input, with a pair of lists as the
accumulator. Do not write recursive functions or use other List functions.
*)
let partition_right predicate lst =
  failwith "Not Implemented"

let test_partition_right () =
  assert (partition_right (fun n -> n mod 2 = 0) [3; 2; 4; 1; 2]
            = ([2; 4; 2], [3; 1]));
  assert (partition_right (fun s -> String.length s = 1) ["a"; "to"; "b"]
            = (["a"; "b"], ["to"]));
  assert (partition_right (fun _ -> true) [1; 2] = ([1; 2], []));
  assert (partition_right (fun _ -> false) [1; 2] = ([], [1; 2]));
  assert (partition_right (fun _ -> true) [] = ([], []));
  Printf.printf "All tests for partition_right passed!\n"


(* Exercise 4: Summarizing with fold_left (15 points)

Write `summarize : int list -> int * int * int` to return the number of
elements, their sum, and their product, in that order. For an empty list,
return (0, 0, 1).

Use exactly one List.fold_left with a triple as the accumulator. Do not
write recursive functions or use other List functions.
*)
let summarize lst =
  failwith "Not Implemented"

let test_summarize () =
  assert (summarize [2; 3; 4] = (3, 9, 24));
  assert (summarize [] = (0, 0, 1));
  assert (summarize [-2; 0; 5] = (3, 3, 0));
  assert (summarize [-2; -3] = (2, -5, 6));
  assert (summarize [7] = (1, 7, 7));
  Printf.printf "All tests for summarize passed!\n"


(* Exercise 5: A Tail-Recursive Map (20 points)

Write `map_tail : ('a -> 'b) -> 'a list -> 'b list` with the same result as
List.map, preserving the input order. Use a tail-recursive helper with an
accumulator. Every recursive call you write must be in tail position.

You may use List.rev once to restore the result order. Do not use other
List functions or the append operator (@).
*)
let map_tail f lst =
  failwith "Not Implemented"

let test_map_tail () =
  assert (map_tail (fun n -> n + 1) [1; 2; 3] = [2; 3; 4]);
  assert (map_tail String.length ["OCaml"; ""; "fun"] = [5; 0; 3]);
  assert (map_tail (fun n -> n * n) [-2; 0; 3] = [4; 0; 9]);
  assert (map_tail (fun n -> n + 1) [] = []);
  Printf.printf "All tests for map_tail passed!\n"


(* Exercise 6: A Tail-Recursive Alternative to fold_right (20 points)

Write `fold_right_tail : ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b` such that,
for pure functions f (functions with no side effects),

  fold_right_tail f [x1; x2; ...; xn] init
    = f x1 (f x2 (... (f xn init) ...))

Use List.rev and List.fold_left, each exactly once. Do not write recursive
functions or use List.fold_right or other List functions. Preserve the
argument order shown in the type: function, list, initial accumulator.

In the comment below your implementation, explain in one or two sentences
why reversing the input is necessary and why this approach uses constant
call-stack space, excluding the space used by f itself. It still allocates a
reversed list of linear size.

Implementation: 16 points. Explanation: 4 points.
*)
let fold_right_tail f lst init =
  failwith "Not Implemented"

(* Your explanation here. *)

let test_fold_right_tail () =
  assert (fold_right_tail (fun x acc -> x - acc) [1; 2; 3] 0 = 2);
  assert (fold_right_tail (fun x acc -> x - acc) [1; 2; 3] 10 = -8);
  assert (fold_right_tail (fun x acc -> x :: acc) [1; 2; 3] [] = [1; 2; 3]);
  assert (fold_right_tail (fun s acc -> "(" ^ s ^ acc ^ ")")
            ["a"; "b"; "c"] "z" = "(a(b(cz)))");
  assert (fold_right_tail (fun x acc -> x + acc) [] 7 = 7);
  Printf.printf "All tests for fold_right_tail passed!\n"


let () =
  test_compose ();
  test_transform_if ();
  test_partition_right ();
  test_summarize ();
  test_map_tail ();
  test_fold_right_tail ()
