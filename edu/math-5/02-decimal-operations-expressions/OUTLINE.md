# Outline: Decimal operations and expressions

Part `02-decimal-operations-expressions` of `math-5`, Grade 5 Math: 5 units, 35 lessons. This file has no number, so learn ignores it. Write each lesson with exactly the file name, objective and standards below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears. The course `needs` math-4, which needs math-3: every term they teach and every term part 1 teaches is known (list at the end) and is not taught again; a one-line reminder is fine.

The four parts of math-5 are written at the same time by four authors. Part 1 is being written tonight too: rely only on the part-1 terms listed at the end and the part-1 skills named under "Skills this part uses from part 1", which part 1's outline promises. Do not use the words that parts 3 and 4 teach (list under "Terms taught later").

## Standards in this part

CCSS grade 5 (codes as the standard numbers them; the meaning in short):

- `5.NBT.B.7` -- add, subtract, multiply and divide decimals to hundredths, using concrete models or drawings and strategies based on place value, the properties of operations and the link between adding and subtracting; relate the strategy to a written method and explain the reasoning.
- `5.NBT.A.2` -- explain the patterns in the placement of the decimal point when a decimal is multiplied or divided by a power of 10 (used here for multiplying by 0.1 and 0.01 and for dividing by a decimal).
- `5.OA.A.1` -- use parentheses, brackets or braces in numerical expressions, and evaluate expressions with these symbols.
- `5.OA.A.2` -- write simple expressions that record calculations with numbers, and interpret numerical expressions without evaluating them: write "add 8 and 7, then multiply by 2" as 2 x (8 + 7); see that 3 x (18932 + 921) is 3 times as large as 18932 + 921 without working out the sum or the product.

Scope (the standard says "to hundredths"): the numbers you add, subtract, multiply and divide have at most 2 decimal places. A product may reach thousandths (tenths x hundredths), never ten-thousandths: do not multiply hundredths by hundredths. Every quotient ends (no repeating decimals) and has at most 2 decimal places, unless the question asks for rounding to a stated place. Divisors are whole numbers up to 2 digits, or decimals in tenths or hundredths (such as 0.5, 0.3, 0.04).

## Figures

Your own figure procedures go in `lib/m5p2.scm` only, every name starting with `m5p2-`. Keep that file under 6 KB (aim for 5 KB: the course has 24 KB for all four parts). Do not edit the other parts' lib files. You may copy procedures from math-4's `lib/m4p3.scm` (`m4p3-hund`, `m4p3-tenths`, `m4p3-place`, `m4p3-meter`...) and `lib/m4p1.scm` (`m4p1-column`, `m4p1-area`, `m4p1-tape`...) into yours, renamed with your prefix.

Built-in procedures that suit this part (learn_figures.md, "The library"):

- `grid` -- a 10 by 10 square for hundredths (`(grid x y 10 10 size)` with shaded squares on top), several squares for numbers greater than 1
- `number-line`, `nl-mark`, `nl-jump` -- adding and subtracting decimals as jumps, equal jumps for a whole number times a decimal, "how many 0.5s fit in 3" as jumps
- `frac-bar-at` -- a tape diagram for word problems and for comparing an expression with 3 times it
- `label`, `caption`

Procedures you may want to write in `lib/m5p2.scm` (suggestions; name them as you like, with the prefix):

- `m5p2-hund` -- a 10 by 10 square with the first n hundredths shaded, whole columns first
- `m5p2-times` -- a 10 by 10 square with a columns shaded one way and b rows shaded another way, the overlap cross-hatched, for 0.a x 0.b
- `m5p2-column` -- numbers lined up by place with the decimal points in one column, regrouping digits above
- `m5p2-area` -- an area model for decimal factors, each part labelled with its product (caption it "not to scale" when it is not)
- `m5p2-tape` -- a bar for an expression and a bar made of n copies of it, for 5.OA.A.2

## Words

- Uses from part 1: power of ten, exponent, thousandth, compatible numbers (list at the end).
- Uses from math-4 and math-3 (list at the end), in particular decimal, decimal point, tenth, hundredth, standard algorithm, inverse operation, area model, partial product, partial quotient, remainder, estimate, round, regroup, parentheses, order of operations, equation, factor, product, quotient, dividend, divisor, associative property, commutative property, distributive property.
- Everyday words, not keywords: dollar, cent, meter, centimeter, liter, kilogram, gram, price, cost, total, change (money back).
- A term is used only after the lesson that teaches it, also inside this part: do not say "expression" (in any sense) before 04-expressions/01, "evaluate" before 04-expressions/02 (say "find the value"), or "brackets" or "braces" before 04-expressions/03.
- **The decimal point does not move.** When you multiply or divide by 10, 100, 0.1 or 0.01, the digits move to other places; "the decimal point seems to move" is allowed as a description, explained with the digits (part 1 teaches it so).
- **Placing the decimal point in a product**: teach the reason first (3 tenths x 4 tenths = 12 hundredths, shown on a 10 by 10 square: say it with the model and place value, not as multiplying fractions, which part 3 teaches), then the count of decimal places as a shortcut that follows from it, and an estimate as the check. Do not teach "count the places" alone.
- **Dividing by a decimal**: multiply the dividend and the divisor by the same power of ten so the divisor is a whole number; explain with a model that the quotient stays the same (1.2 ÷ 0.04: how many 4 hundredths in 120 hundredths). Do not say "move the decimal point" as the reason.
- Grade 5 divides without a named method: do not call any dividing method "the standard algorithm" and do not say "long division" (grade 6). Place-by-place dividing and partial quotients, as in part 1, are fine.
- **Brackets and braces** (04-expressions/03): learn's formulas know only round brackets `( )`, so an expression with [ ] or { } is never put inside `$...$`. Write it in a code span in prose (`` `2 x [3 + (4 - 1)]` ``) or as plain text in a question, and never let "]" be followed straight by "(" (learn would read a link). Prove its value with nested round brackets: `(true "2 * (3 + (4 - 1)) = 12")`. Use "x" for times inside a code span. Check every such step in the preview.
- Expressions and equations: an expression has no equal sign; an equation says two expressions are equal. Say "find the value of" or "evaluate", never "solve", for an expression.
- **Typed answers**: decimal answers are `text` checks accepting every right way of writing them: `(accept "1.2")` `(accept "1.20")`, and `(accept ".8")` beside `(accept "0.8")`, one string per `(accept ...)`, at most 8. A `number` check would also take a fraction such as 6/5. Give units in `(unit "...")`, never inside a formula.
- **Money**: write `\$3.45` or "3.45 dollars" in prose (a bare dollar sign starts a formula). Money answers to the cent: accept "8.40" and "8.4" both.
- **Numbers**: commas in prose for 4 or more digits; no commas inside formulas, `(from ...)`, `(true ...)` and `(answer ...)`. In a formula write `5 * (3/4)`, not `5 * 3/4`. Use ÷ for dividing in prose and in formulas; never `a / b` for dividing.
- Rounding a halfway number up is the usual rule, not a law of nature.
- Grade 5 words: sentences of 15 words or fewer, one new term a step, "you", present tense, numbers as digits, US spelling and units.

## 01-adding-subtracting/ -- Adding and subtracting decimals

Add and subtract decimals to hundredths with models and place value, and relate them to a written method. Standards: 5.NBT.B.7.

1. `01-adding-with-models.md` -- Add decimals to hundredths with hundredths squares, joining tenths with tenths and hundredths with hundredths, such as 0.45 + 0.38 = 0.83.  
   Standards: "5.NBT.B.7". Keywords: (none new).
2. `02-adding-by-place.md` -- Add decimals by lining up the places, writing a 0 in an empty place and regrouping, such as 3.6 + 1.47 = 5.07.  
   Standards: "5.NBT.B.7". Keywords: (none new).
3. `03-subtracting-with-models.md` -- Subtract decimals to hundredths with hundredths squares and a number line, such as 1.2 - 0.35 = 0.85.  
   Standards: "5.NBT.B.7". Keywords: (none new).
4. `04-subtracting-by-place.md` -- Subtract decimals by lining up the places and regrouping, also across zeros, such as 5 - 2.36 = 2.64.  
   Standards: "5.NBT.B.7". Keywords: (none new).
5. `05-estimating-sums.md` -- Estimate a decimal sum or difference by rounding to whole numbers, and use the estimate to check an answer.  
   Standards: "5.NBT.B.7". Keywords: (none new).
6. `06-money.md` -- Add and subtract amounts of money written as decimals of a dollar, such as the change from 20 dollars after spending 13.75 dollars.  
   Standards: "5.NBT.B.7". Keywords: (none new).
7. `07-adding-problems.md` -- Solve multi-step word problems that add and subtract decimals to hundredths, and check them with the inverse operation.  
   Standards: "5.NBT.B.7". Keywords: (none new).

## 02-multiplying-decimals/ -- Multiplying decimals

Multiply decimals with models and place value, and place the decimal point in a product with reasons. Standards: 5.NBT.B.7, 5.NBT.A.2.

1. `01-whole-times-tenths.md` -- Multiply a whole number by a decimal in tenths as equal groups, such as 3 x 0.4 = 12 tenths = 1.2.  
   Standards: "5.NBT.B.7". Keywords: (none new).
2. `02-whole-times-hundredths.md` -- Multiply a whole number by a decimal to hundredths with place value and an area model, such as 4 x 2.35 = 9.4.  
   Standards: "5.NBT.B.7". Keywords: (none new).
3. `03-tenths-times-tenths.md` -- Multiply tenths by tenths with a 10 by 10 square, such as 0.3 x 0.4 = 0.12, and explain why the product is in hundredths.  
   Standards: "5.NBT.B.7". Keywords: (none new).
4. `04-decimal-area-model.md` -- Multiply two decimals greater than 1 with an area model and partial products, such as 1.2 x 2.5 = 3.  
   Standards: "5.NBT.B.7". Keywords: (none new).
5. `05-times-tenth-hundredth.md` -- Multiply a number by 0.1 or 0.01, and explain why the product is 1/10 or 1/100 of the number.  
   Standards: "5.NBT.B.7", "5.NBT.A.2". Keywords: (none new).
6. `06-placing-the-point.md` -- Multiply decimals as whole numbers, then place the decimal point by the places in the factors, and explain why that works.  
   Standards: "5.NBT.B.7". Keywords: (none new).
7. `07-estimating-products.md` -- Estimate a decimal product by rounding the factors, and use it to find a misplaced decimal point.  
   Standards: "5.NBT.B.7". Keywords: (none new).
8. `08-multiplying-problems.md` -- Solve word problems that multiply decimals, such as the cost of 3.5 pounds of apples at 2.40 dollars a pound.  
   Standards: "5.NBT.B.7". Keywords: (none new).

## 03-dividing-decimals/ -- Dividing decimals

Divide decimals by whole numbers and by decimals with models and place value. Standards: 5.NBT.B.7, 5.NBT.A.2.

1. `01-sharing-decimals.md` -- Divide a decimal by a whole number by sharing hundredths squares equally, such as 2.4 ÷ 3 = 0.8.  
   Standards: "5.NBT.B.7". Keywords: (none new).
2. `02-decimal-by-one-digit.md` -- Divide a decimal to hundredths by a one-digit whole number place by place, such as 7.35 ÷ 5 = 1.47.  
   Standards: "5.NBT.B.7". Keywords: (none new).
3. `03-decimal-by-two-digit.md` -- Divide a decimal by a two-digit whole number with partial quotients or place by place, such as 25.2 ÷ 12 = 2.1.  
   Standards: "5.NBT.B.7". Keywords: (none new).
4. `04-writing-zeros.md` -- Keep dividing past the last digit by writing zeros after it, such as 3 ÷ 4 = 0.75 and 6.3 ÷ 5 = 1.26.  
   Standards: "5.NBT.B.7". Keywords: (none new).
5. `05-how-many-groups.md` -- Divide by a decimal as "how many groups" with a number line, such as 3 ÷ 0.5 = 6 and 1.2 ÷ 0.3 = 4.  
   Standards: "5.NBT.B.7". Keywords: (none new).
6. `06-dividing-by-decimals.md` -- Divide by a decimal by multiplying both numbers by 10 or 100, such as 1.2 ÷ 0.04 = 120 ÷ 4 = 30, and explain why the quotient stays the same.  
   Standards: "5.NBT.B.7", "5.NBT.A.2". Keywords: (none new).
7. `07-checking-quotients.md` -- Check a decimal quotient by multiplying it by the divisor and with an estimate.  
   Standards: "5.NBT.B.7". Keywords: (none new).
8. `08-dividing-problems.md` -- Solve word problems that divide decimals, such as sharing a cost equally or cutting a length into equal pieces.  
   Standards: "5.NBT.B.7". Keywords: (none new).

## 04-expressions/ -- Writing and evaluating expressions

Write, evaluate and interpret numerical expressions with parentheses, brackets and braces. Standards: 5.OA.A.1, 5.OA.A.2.

1. `01-expressions.md` -- Tell an expression from an equation, and find the value of a numerical expression with the order of operations, such as 4 + 3 x 5 = 19.  
   Standards: "5.OA.A.1". Keywords: "expression (in math)", "numerical expression".
2. `02-parentheses.md` -- Evaluate expressions with parentheses by working inside them first, such as 2 x (8 + 7) = 30 but 2 x 8 + 7 = 23.  
   Standards: "5.OA.A.1". Keywords: "evaluate".
3. `03-brackets-and-braces.md` -- Evaluate expressions with parentheses inside brackets and brackets inside braces, working from the innermost pair outward.  
   Standards: "5.OA.A.1". Keywords: "brackets (in math)", "braces (in math)".
4. `04-writing-expressions.md` -- Write an expression for a calculation given in words, such as "add 8 and 7, then multiply by 2" as 2 x (8 + 7).  
   Standards: "5.OA.A.2". Keywords: (none new).
5. `05-reading-expressions.md` -- Describe an expression in words without evaluating it, such as 3 x (18,932 + 921) is 3 times as large as 18,932 + 921.  
   Standards: "5.OA.A.2". Keywords: (none new).
6. `06-comparing-expressions.md` -- Compare two expressions without evaluating them by how one is made from the other, such as (45 + 12) ÷ 3 is less than 45 + 12.  
   Standards: "5.OA.A.2". Keywords: (none new).
7. `07-expressions-problems.md` -- Write one expression with grouping symbols for a multi-step word problem, and evaluate it.  
   Standards: "5.OA.A.1", "5.OA.A.2". Keywords: (none new).

## 05-using-decimals/ -- Problems with decimals and expressions

Choose the operation for a decimal problem, write it as an expression, and check that the answer is reasonable. Standards: 5.NBT.B.7, 5.OA.A.1, 5.OA.A.2.

1. `01-choosing-the-operation.md` -- Decide whether a decimal word problem needs adding, subtracting, multiplying or dividing, and solve it.  
   Standards: "5.NBT.B.7". Keywords: (none new).
2. `02-decimal-expressions.md` -- Write and evaluate expressions with parentheses that use decimals, such as 2 x (3.5 + 1.25) = 9.5.  
   Standards: "5.OA.A.1", "5.OA.A.2", "5.NBT.B.7". Keywords: (none new).
3. `03-unit-prices.md` -- Find the price of several items from the price of one, and the price of one from the price of several, such as 4 pens for 3.60 dollars.  
   Standards: "5.NBT.B.7". Keywords: (none new).
4. `04-reasonable-answers.md` -- Check a decimal answer with an estimate and with the inverse operation, and fix a misplaced decimal point.  
   Standards: "5.NBT.B.7". Keywords: (none new).
5. `05-mixed-problems.md` -- Solve multi-step word problems with all four operations on decimals, writing one expression for the whole problem.  
   Standards: "5.NBT.B.7", "5.OA.A.2". Keywords: (none new).

## Skills this part uses from part 1

Part 1 (`01-place-value-decimals`) teaches these; use them with a one-line reminder, never teach them again:

- Place value to thousandths, reading decimals ("45 thousandths"), and 0.4 = 0.40 (02-thousandths, 03-comparing-rounding/02).
- Multiplying and dividing a decimal by 10, 100 and 1,000, and powers of ten with exponents (01-powers-of-ten/03-04, 02-thousandths/06-07): 05-times-tenth-hundredth and 06-dividing-by-decimals build on them.
- Rounding decimals to any place (03-comparing-rounding/04-05), for estimates.
- The standard algorithm for multiplying whole numbers (04-multiplying), used when you multiply decimals as whole numbers.
- Dividing by a two-digit number with partial quotients and place by place (05-dividing), used in 03-dividing-decimals/03.

## Skills later parts use from this part

- Part 3 may use the terms expression, numerical expression and evaluate (04-expressions), and may mention that 3 ÷ 4 = 0.75 (03-dividing-decimals/04).
- Part 4 uses adding, subtracting, multiplying and dividing decimals (units 01-03) in converting metric units and in multi-step measurement problems.

## Terms taught later (do not use them in this part)

- Part 3 (`03-fractions`): unlike denominators, scaling.
- Part 4 (`04-measurement-geometry`): millimeter, ton, fluid ounce, pint, quart, gallon, volume, solid figure, unit cube, cubic unit, cubic centimeter, cubic inch, cubic foot, rectangular prism, face (of a solid), edge (of a solid), base (of a prism), coordinate plane, axis (of a graph), origin (of a graph), ordered pair, x-axis, y-axis, coordinate (of a point), x-coordinate, y-coordinate, quadrant, corresponding terms, equilateral triangle, isosceles triangle, scalene triangle, subcategory, hierarchy.

Terms with a bracketed note are checked only inside math-5, so avoid the everyday word too: no "face" or "faces", "edge", "base", "origin", "axis" or "axes" in this part. "Volume" alone is a part-4 term; "liquid volume" is known. Say "different denominators", not "unlike denominators", and do not multiply or divide fractions by fractions (part 3).

Avoid anywhere in the course: "improper fraction" (say "a fraction greater than 1"), "trapezoid" and "trapezium", "long division", "least common multiple", "least common denominator", "greatest common factor" (grade 6), "reciprocal", "negative number".

## Terms taught before this part

From part 1 of math-5 (`01-place-value-decimals`):

- power of ten, exponent (01-powers-of-ten); thousandth (of a whole) (02-thousandths); compatible numbers (05-dividing).

From math-4 (known; do not teach again):

- Part 1 (`01-place-value-operations`): standard form, word form, expanded form, standard algorithm, inverse operation, area model, partial product, remainder, partial quotient, multiplicative comparison.
- Part 2 (`02-factors-patterns-fractions`): factor pair, divisible, common factor, common multiple, prime number, composite number, term (of a pattern), fifth (of a whole), tenth (of a whole), twelfth (of a whole), simplest form, benchmark fraction, common denominator, common numerator.
- Part 3 (`03-fractions-decimals`): decompose, like denominators, hundredth (of a whole), decimal, decimal point.
- Part 4 (`04-measurement-geometry`): kilometer, yard (unit of length), milliliter, weight, pound (unit of weight), ounce, formula, eighth inch, line segment, endpoint, ray (in geometry), angle, vertex (of an angle), acute angle, obtuse angle, perpendicular, parallel, degree (of an angle), straight angle, protractor, right triangle, acute triangle, obtuse triangle, parallelogram, line of symmetry.

From math-3 (known; do not teach again):

- Multiplication and division: equal groups, multiplication, multiply, equation, factor (of a product), product (of numbers), array, row (of an array), column (of an array), tape diagram, division, divide, dividend, divisor, quotient, related facts, unknown factor, property (of multiplication), commutative property, associative property, parentheses, distributive property, multiple (of a number), multiplication table, round (a number), estimate, regroup, order of operations.
- Fractions: sixth (of a whole), eighth (of a whole), fraction, unit fraction, numerator, denominator, fraction strip, interval (on a number line), equivalent (fractions), half inch, mixed number, quarter inch.
- Measurement and geometry: a.m., p.m., elapsed time, mass, balance (for mass), gram, kilogram, liquid volume, liter, key (of a graph), scale (of a graph), area, unit square, square unit, square centimeter, square meter, square inch, square foot, side length, rectilinear figure, perimeter, polygon, attribute, right angle, quadrilateral, rhombus, category (of shapes).
