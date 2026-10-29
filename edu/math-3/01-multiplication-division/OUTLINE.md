# Outline: Multiplication and division

Part `01-multiplication-division` of `math-3`, Grade 3 Math: 6 units, 43 lessons. This file has no number, so learn ignores it. Write each lesson with exactly the file name, objective and standards below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears.

## Figures

Your own figure procedures go in `lib/md.scm` only, every name starting with `md-`. Keep that file under 8 KB (the course has 24 KB for all three parts). Do not edit the other parts' lib files.

Built-in procedures that suit this part (learn_figures.md, "The library"):

- `dot-array` -- equal groups and arrays (rows x columns of dots)
- `grid` -- arrays of squares, a multiplication table
- `frac-bar-at` -- a tape diagram: one bar in equal parts (label the parts with `label`; do not call them fractions)
- `number-line`, `nl-mark`, `nl-jump` -- skip counting, equal jumps for multiplying and dividing, rounding to the nearest 10 or 100, estimates
- `base-ten` -- hundreds, tens and ones for adding and subtracting within 1000 and regrouping
- `label`, `caption` -- words and numbers on a figure

Procedures you may want to write in `lib/md.scm` (suggestions; name them as you like, with the prefix):

- `md-groups` -- n circles, each holding k dots (equal groups, sharing)
- `md-table` -- a multiplication table with a row, column or cell picked out
- `md-tape` -- a tape diagram with a total and a ? over it

## Words

- Words the learner knows from grade 2 and may be used freely: number line, skip count, equal, sum, difference, hundreds, tens, ones, even, odd.
- Do not use terms that come later: "fraction", "area", "data". "Unknown" alone is an everyday word; "unknown factor" is taught in 02-division/05.
- A term is used only after the lesson that teaches it, also inside this part: say "groups" before 01-multiplication/04 teaches "row", and do not say "multiple" before 04-facts/01, or "estimate" before 05-rounding/04.
- Rounding a halfway number up is the usual rule, not a law of nature: say so ("the usual rule is...").
- Avoid the word "key" (as in a keyboard key) in this part: "key (of a graph)" is taught in part 3 and terms.py would flag it. Write "press F5", not "the F5 key".
- Grade 3 words: sentences of 15 words or fewer, one new term a step, "you", present tense, numbers as digits, US spelling and units.

## 01-multiplication/ -- What multiplication means

Find the total of equal groups by multiplying, and use it to solve problems. Standards: 3.OA.A.1, 3.OA.A.3.

1. `01-equal-groups.md` -- Describe a set of objects as a number of equal groups of the same size, and find the total by adding.  
   Standards: "3.OA.A.1". Keywords: "equal groups".
2. `02-multiplication.md` -- Write a multiplication equation such as 5 x 7 = 35 for 5 groups of 7.  
   Standards: "3.OA.A.1". Keywords: "multiplication", "multiply", "equation".
3. `03-factors-and-products.md` -- Name the factors and the product in a multiplication equation and say what each one counts.  
   Standards: "3.OA.A.1". Keywords: "factor (of a product)", "product (of numbers)".
4. `04-arrays.md` -- Show a product as an array of rows and columns and find it.  
   Standards: "3.OA.A.1", "3.OA.A.3". Keywords: "array", "row (of an array)", "column (of an array)".
5. `05-skip-counting.md` -- Find a product by skip counting with equal jumps on a number line.  
   Standards: "3.OA.A.1". Keywords: (none new).
6. `06-tape-diagrams.md` -- Draw a tape diagram of equal parts to show a multiplication.  
   Standards: "3.OA.A.1", "3.OA.A.3". Keywords: "tape diagram".
7. `07-multiplication-problems.md` -- Solve word problems about equal groups, arrays and lengths by multiplying within 100.  
   Standards: "3.OA.A.3". Keywords: (none new).

## 02-division/ -- What division means

Find how many are in each group, or how many groups, by dividing. Standards: 3.OA.A.2, 3.OA.B.6, 3.OA.A.4, 3.OA.A.3.

1. `01-sharing-equally.md` -- Find how many are in each group when a total is shared equally among a number of groups.  
   Standards: "3.OA.A.2". Keywords: "division", "divide".
2. `02-how-many-groups.md` -- Find how many equal groups of a given size a total makes.  
   Standards: "3.OA.A.2". Keywords: (none new).
3. `03-division-equations.md` -- Write a division equation and name its dividend, divisor and quotient.  
   Standards: "3.OA.A.2". Keywords: "dividend", "divisor", "quotient".
4. `04-related-facts.md` -- Write the multiplication and division facts that use the same three numbers.  
   Standards: "3.OA.B.6". Keywords: "related facts".
5. `05-unknown-factor.md` -- Solve a division such as 32 / 8 by finding the unknown factor in 8 x ? = 32.  
   Standards: "3.OA.B.6". Keywords: "unknown factor".
6. `06-unknown-numbers.md` -- Find the unknown number in any place of a multiplication or division equation.  
   Standards: "3.OA.A.4". Keywords: (none new).
7. `07-dividing-with-one-and-zero.md` -- Divide by 1, divide a number by itself and divide 0, and explain why no number can be divided by 0.  
   Standards: "3.OA.B.6". Keywords: (none new).
8. `08-division-problems.md` -- Solve word problems about sharing and grouping by dividing within 100.  
   Standards: "3.OA.A.3". Keywords: (none new).

## 03-properties/ -- Properties of multiplication

Use the properties of multiplication to find products you do not yet know. Standards: 3.OA.B.5, 3.OA.C.7.

1. `01-order.md` -- Use the commutative property: 3 x 7 and 7 x 3 have the same product.  
   Standards: "3.OA.B.5". Keywords: "property (of multiplication)", "commutative property".
2. `02-one-and-zero.md` -- Multiply any number by 1 and by 0, and explain each product.  
   Standards: "3.OA.B.5". Keywords: (none new).
3. `03-grouping.md` -- Use the associative property to multiply three factors, grouping them with parentheses.  
   Standards: "3.OA.B.5". Keywords: "associative property", "parentheses".
4. `04-break-apart.md` -- Use the distributive property: find 8 x 7 as 8 x 5 + 8 x 2.  
   Standards: "3.OA.B.5". Keywords: "distributive property".
5. `05-doubling.md` -- Find facts of 4, 6 and 8 by doubling facts of 2, 3 and 4.  
   Standards: "3.OA.B.5", "3.OA.C.7". Keywords: (none new).
6. `06-using-properties.md` -- Choose a property to work out an unknown fact from facts you know.  
   Standards: "3.OA.B.5", "3.OA.C.7". Keywords: (none new).

## 04-facts/ -- Facts and patterns

Know all products of two one-digit numbers from memory and divide with them. Standards: 3.OA.C.7, 3.OA.D.9, 3.NBT.A.3.

1. `01-twos-fives-tens.md` -- Know the multiplication facts of 2, 5 and 10 and their multiples.  
   Standards: "3.OA.C.7". Keywords: "multiple (of a number)".
2. `02-threes-and-fours.md` -- Know the multiplication facts of 3 and 4.  
   Standards: "3.OA.C.7". Keywords: (none new).
3. `03-sixes-and-eights.md` -- Know the multiplication facts of 6 and 8.  
   Standards: "3.OA.C.7". Keywords: (none new).
4. `04-sevens-and-nines.md` -- Know the multiplication facts of 7 and 9.  
   Standards: "3.OA.C.7". Keywords: (none new).
5. `05-division-facts.md` -- Divide within 100 using the multiplication facts you know.  
   Standards: "3.OA.C.7". Keywords: (none new).
6. `06-all-the-facts.md` -- Recall any product of two one-digit numbers and its related division facts quickly.  
   Standards: "3.OA.C.7". Keywords: (none new).
7. `07-patterns.md` -- Find patterns in a multiplication table and explain them with properties.  
   Standards: "3.OA.D.9". Keywords: "multiplication table".
8. `08-multiples-of-ten.md` -- Multiply a one-digit number by a multiple of 10, such as 9 x 80.  
   Standards: "3.NBT.A.3". Keywords: (none new).

## 05-rounding/ -- Rounding, adding and subtracting

Round numbers to the nearest 10 or 100, and add and subtract within 1000. Standards: 3.NBT.A.1, 3.NBT.A.2.

1. `01-round-to-ten.md` -- Round a whole number to the nearest 10 using a number line.  
   Standards: "3.NBT.A.1". Keywords: "round (a number)".
2. `02-round-to-hundred.md` -- Round a whole number to the nearest 100 using a number line.  
   Standards: "3.NBT.A.1". Keywords: (none new).
3. `03-halfway.md` -- Round a number that is halfway between two tens or hundreds by the usual rule of rounding up.  
   Standards: "3.NBT.A.1". Keywords: (none new).
4. `04-estimate.md` -- Estimate a sum or difference by rounding first.  
   Standards: "3.NBT.A.1". Keywords: "estimate".
5. `05-add-within-1000.md` -- Add within 1000 by place value, regrouping when a place has 10 or more.  
   Standards: "3.NBT.A.2". Keywords: "regroup".
6. `06-subtract-within-1000.md` -- Subtract within 1000 by place value, regrouping when a place has too few.  
   Standards: "3.NBT.A.2". Keywords: (none new).
7. `07-strategies.md` -- Add and subtract within 1000 in more than one way and check with an estimate.  
   Standards: "3.NBT.A.2". Keywords: (none new).

## 06-two-step/ -- Two-step problems

Solve word problems with two steps and check that the answer makes sense. Standards: 3.OA.D.8, 3.OA.A.3.

1. `01-letters-for-unknowns.md` -- Write an equation for a word problem with a letter standing for the unknown number.  
   Standards: "3.OA.D.8". Keywords: (none new).
2. `02-add-and-subtract.md` -- Solve two-step word problems by adding and subtracting.  
   Standards: "3.OA.D.8". Keywords: (none new).
3. `03-multiply-and-add.md` -- Solve two-step word problems that multiply and then add or subtract.  
   Standards: "3.OA.D.8". Keywords: (none new).
4. `04-divide-and-more.md` -- Solve two-step word problems that divide and use one more operation.  
   Standards: "3.OA.D.8". Keywords: (none new).
5. `05-order-of-operations.md` -- Work out an expression with no parentheses by multiplying and dividing before adding and subtracting.  
   Standards: "3.OA.D.8". Keywords: "order of operations".
6. `06-does-it-make-sense.md` -- Check the answer to a two-step problem with mental math and an estimate.  
   Standards: "3.OA.D.8". Keywords: (none new).
7. `07-writing-problems.md` -- Write a word problem that fits a given equation.  
   Standards: "3.OA.A.3", "3.OA.D.8". Keywords: (none new).
