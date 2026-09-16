# Homework02: Lambda calculus basics

## Exercise 1 (8 points)

Consider the lambda term `(λa.aλb.ab)λa.a`.

1. Draw a parse tree based on the following grammar of lambda calculus:

   ```
   Term -> Var | λ Var . Term | Term Term
   ```

2. Reduce the term to normal form. A term is in normal form when no beta reductions are possible. In other words, simplify the term as much as possible until no further beta reductions can be performed.

## Exercise 2 (8 points)

Consider the lambda term `(λx.λw.xwz)y x`.

1. Draw a parse tree.
2. Reduce the term to normal form.

## Exercise 3 (28 points)

In the following, `TRUE` is an alias for `λx.λy.x`, and `FALSE` is an alias for `λx.λy.y`.

Simplify each of the following lambda terms to normal form using beta reduction. You do not need to show intermediate results.

1. `TRUE TRUE TRUE`
2. `TRUE TRUE FALSE`
3. `TRUE FALSE TRUE`
4. `TRUE FALSE FALSE`
5. `FALSE TRUE TRUE`
6. `FALSE FALSE TRUE`
7. `FALSE TRUE FALSE`

**Hint:** You may perform the beta reductions mechanically, or you may deduce the meanings of `TRUE` and `FALSE`.

## Exercise 4 (20 points)

Simplify each of the following lambda terms to normal form using beta reduction. You do not need to show intermediate results.

1. `(λx. λy. x y) a b`
2. `(λx. x (λy. y x)) (λz. z)`
3. `(λx. λy. x (λz. y z)) a b`
4. `(λx. λy. λz. x z (y z)) a b c`
5. `(λx. x (λy. y)) (λx. x)`

## Exercise 5 (16 points)

Determine whether each pair is alpha-equivalent:

1. `(λx.xy)` vs. `(λx.yx)`
2. `(λx.xu)` vs. `(λx.xv)`
3. `(λa.λb.abc)` vs. `(λx.λy.xyz)`
4. `(λx.λy.xyz)` vs. `(λy.λx.yxz)`

## Exercise 6 (4 points)

**True or False?**

- The lambda expression `((λx. λy.y) y) (λx.x z)` reduces to `z` as its normal form.

If the statement is false, provide the correct normal form.

## Exercise 7 (16 points)

Reduce each lambda term below to normal form.

1. `(λx.λy.xyz)y x`
2. `(λx.λf.λy.fxy)(fy)`
3. `(λx.λy.yx)(λx.xx)y`
4. `(λx.λy.xyy)(λy.y)z`
