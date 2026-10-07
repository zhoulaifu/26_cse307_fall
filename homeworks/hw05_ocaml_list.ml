(*
Homework 05: OCaml Lists and Recursive Data Types

Submit your completed solution as a single .ml file on Brightspace.
Fill in each `Your implementation here` placeholder. Keep the provided type
declarations and tests unchanged. Check that your file compiles and that all
tests pass before submitting.

Total: 100 points
*)

(* Exercise 1: Lists (25 points)

Write a function `take : int -> 'a list -> 'a list` such that `take n lst`
returns the first n elements of lst. If lst has fewer than n elements,
return the entire list. For n <= 0, return the empty list.

Examples:

  take 2 [1; 2; 3; 4] = [1; 2]
  take 5 [1; 2; 3] = [1; 2; 3]
  take 0 [1; 2; 3] = []
  take (-2) [1; 2; 3] = []
  take 3 [] = []
*)
let rec take n lst =
  (* Your implementation here *)
  []

let test_take () =
  assert (take 2 [1; 2; 3; 4] = [1; 2]);
  assert (take 3 [1; 2; 3] = [1; 2; 3]);
  assert (take 5 [1; 2; 3] = [1; 2; 3]);
  assert (take 0 [1; 2; 3] = []);
  assert (take (-2) [1; 2; 3] = []);
  assert (take 3 [] = []);
  Printf.printf "All tests for take passed!\n"


(* Exercise 2: Graphs (25 points)

Represent an edge in a weighted, undirected graph as a triple containing the
two node names and the edge weight. Define the `edge` and `graph` types below.

Write `min_edge : graph -> edge option` to return an edge of minimum weight,
or `None` if the graph has no edges. Use recursion and pattern matching. If
several edges share the minimum weight, returning any one of them is valid.
*)
type edge = string * string * int
type graph = edge list

let min_edge (g : graph) : edge option =
  (* Your implementation here *)
  None

let test_min_edge () =
  let g1 : graph = [("A", "B", 3); ("B", "C", 2); ("A", "C", 5)] in
  let g2 : graph = [("X", "Y", 10); ("Y", "Z", 1); ("X", "Z", 7)] in
  let g3 : graph = [] in
  assert (min_edge g1 = Some ("B", "C", 2));
  assert (min_edge g2 = Some ("Y", "Z", 1));
  assert (min_edge g3 = None);
  Printf.printf "All tests for min_edge passed!\n"


(* Exercise 3: Binary Trees (25 points)

The following type represents a binary tree whose nodes contain integers.
Write `mirror : btree -> btree` to exchange the left and right subtrees at
every node.
*)
type btree =
  | Empty
  | Node of int * btree * btree

let rec mirror (t : btree) : btree =
  (* Your implementation here *)
  Empty

let test_mirror () =
  let t1 = Node (1, Empty, Empty) in
  let t2 = Node (1, Node (2, Empty, Empty), Node (3, Empty, Empty)) in
  let t3 = Node (4, Node (5, Empty, Node (6, Empty, Empty)), Empty) in
  assert (mirror t1 = Node (1, Empty, Empty));
  assert (mirror t2 = Node (1, Node (3, Empty, Empty), Node (2, Empty, Empty)));
  assert (mirror t3 = Node (4, Empty, Node (5, Node (6, Empty, Empty), Empty)));
  Printf.printf "All tests for mirror passed!\n"


(* Exercise 4: Peano Arithmetic (25 points)

Represent natural numbers using the following type. Implement these
operations:

  natadd : nat -> nat -> nat
  natmul : nat -> nat -> nat
  natexp : nat -> nat -> nat

For `natexp`, define ZERO raised to ZERO to be SUCC ZERO (that is, 1).
*)
type nat =
  | ZERO
  | SUCC of nat

let rec natadd (n1 : nat) (n2 : nat) : nat =
  (* Your implementation here *)
  ZERO

let rec natmul (n1 : nat) (n2 : nat) : nat =
  (* Your implementation here *)
  ZERO

let rec natexp (n1 : nat) (n2 : nat) : nat =
  (* Your implementation here *)
  ZERO

(* Conversion helpers for testing; `int_to_nat` expects a nonnegative integer. *)
let rec int_to_nat n =
  if n = 0 then ZERO else SUCC (int_to_nat (n - 1))

let rec nat_to_int n =
  match n with
  | ZERO -> 0
  | SUCC n' -> 1 + nat_to_int n'

let test_nat_operations () =
  let two = SUCC (SUCC ZERO) in
  let three = SUCC (SUCC (SUCC ZERO)) in
  assert (nat_to_int (natadd two three) = 5);
  assert (nat_to_int (natadd two ZERO) = 2);
  assert (nat_to_int (natmul two three) = 6);
  assert (nat_to_int (natmul ZERO three) = 0);
  assert (nat_to_int (natexp two three) = 8);
  assert (nat_to_int (natexp three ZERO) = 1);
  assert (nat_to_int (natexp ZERO ZERO) = 1);
  Printf.printf "All tests for natadd, natmul, and natexp passed!\n"

let () =
  test_take ();
  test_min_edge ();
  test_mirror ();
  test_nat_operations ()
