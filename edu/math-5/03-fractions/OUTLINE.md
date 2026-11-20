# Outline: Fractions

Part `03-fractions` of `math-5`, Grade 5 Math: 6 units, 35 lessons. This file has no number, so learn ignores it. Write each lesson with exactly the file name, objective and standards below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears. The course `needs` math-4, which needs math-3: every term they teach and every term parts 1 and 2 teach is known (list at the end) and is not taught again; a one-line reminder is fine.

The four parts of math-5 are written at the same time by four authors. Parts 1 and 2 are being written tonight too: rely only on the terms listed at the end and the skills named under "Skills this part uses from parts 1 and 2", which their outlines promise. This part needs very little from them: almost everything it builds on is math-4's. Do not use the words that part 4 teaches (list under "Terms taught later").

## Standards in this part

CCSS grade 5 (codes as the standard numbers them; the meaning in short):

- `5.NF.A.1` -- add and subtract fractions with unlike denominators (including mixed numbers) by replacing them with equivalent fractions with like denominators: 2/3 + 5/4 = 8/12 + 15/12 = 23/12.
- `5.NF.A.2` -- solve word problems that add and subtract fractions of the same whole, including unlike denominators, with fraction models or equations; use benchmark fractions and number sense to estimate mentally and to judge whether answers are reasonable (2/5 + 1/2 = 3/7 cannot be right, because 3/7 < 1/2).
- `5.NF.B.3` -- understand a fraction as the numerator divided by the denominator (a/b = a ÷ b); solve word problems that divide whole numbers with answers that are fractions or mixed numbers (3 wholes shared by 4 people: 3/4 each).
- `5.NF.B.4a` -- read (a/b) x q as a parts of a partition of q into b equal parts, or as a x q ÷ b: (2/3) x 4 = 8/3; and (2/3) x (4/5) = 8/15.
- `5.NF.B.4b` -- find the area of a rectangle with fraction side lengths by tiling it with unit squares of unit-fraction side lengths, show it equals the product of the side lengths, and show fraction products as rectangle areas.
- `5.NF.B.5a` -- multiplying is scaling (resizing): compare the size of a product with one factor from the size of the other factor, without multiplying.
- `5.NF.B.5b` -- explain why multiplying a number by a fraction greater than 1 gives a product greater than the number, by a fraction less than 1 a product less than it, and relate a/b = (n x a)/(n x b) to multiplying a/b by 1.
- `5.NF.B.6` -- solve real-world problems that multiply fractions and mixed numbers.
- `5.NF.B.7a` -- divide a unit fraction by a whole number (not 0), with a model, and link it to multiplying: (1/3) ÷ 4 = 1/12 because (1/12) x 4 = 1/3.
- `5.NF.B.7b` -- divide a whole number by a unit fraction, with a model, and link it to multiplying: 4 ÷ (1/5) = 20 because 20 x (1/5) = 4.
- `5.NF.B.7c` -- solve real-world problems that divide a unit fraction by a whole number or a whole number by a unit fraction.

Scope: denominators 2 to 12 (and 100 where tenths and hundredths meet); a common denominator of at most 60. Dividing only a unit fraction by a whole number or a whole number by a unit fraction (5.NF.B.7): never a fraction by a fraction in general, a mixed number by anything, or a whole number by a non-unit fraction (that is grade 6, 6.NS.A.1). Numbers in this part are 0 or greater.

## Figures

Your own figure procedures go in `lib/m5p3.scm` only, every name starting with `m5p3-`. Keep that file under 6 KB (aim for 5 KB: the course has 24 KB for all four parts). Do not edit the other parts' lib files. You may copy procedures from math-4's `lib/m4p2.scm` (`m4p2-area`, `m4p2-bar`, `m4p2-line`...) and `lib/m4p3.scm` (`m4p3-line`, `m4p3-jumps`, `m4p3-wholes`, `m4p3-groups`...) into yours, renamed with your prefix.

Built-in procedures that suit this part (learn_figures.md, "The library"):

- `frac-bar`, `frac-bar-at` -- fraction bars one above the other: unlike parts made the same size, sums and differences, a tape diagram of q cut into b equal parts
- `number-line`, `nl-mark`, `nl-jump` -- sums as jumps, benchmarks 0, 1/2 and 1, quotients between two whole numbers, "how many fifths in 4" as jumps, a number and its scaled product
- `grid` -- a unit square cut into rows and columns for a fraction of a fraction and for fraction side lengths
- `frac-circle` -- sparingly: bars and number lines compare more truthfully
- `label`, `caption`

Procedures you may want to write in `lib/m5p3.scm` (suggestions; name them as you like, with the prefix):

- `m5p3-area` -- a unit square cut into b columns and d rows, a columns hatched one way and c rows another, the overlap cross-hatched: (a/b) x (c/d)
- `m5p3-tile` -- a rectangle with fraction or mixed-number side lengths drawn over a grid of whole units, each unit cut into unit-fraction squares, to scale
- `m5p3-share` -- a wholes (bars) each cut into b equal parts, with the parts dealt out to b people and labelled
- `m5p3-scale` -- a number line with a number and its product with a factor, the factor on a slider, showing the product stretch past or shrink below the number
- `m5p3-tape` -- a tape diagram with a total and equal parts, for "2/3 of 6" and for word problems

Every figure models the fraction truthfully: equal parts are equal, a bar for 1/3 is a third of the bar for 1, and the two fractions in a sum refer to bars of the same whole.

## Words

- Uses from parts 1 and 2: power of ten, exponent, thousandth, compatible numbers; expression, numerical expression, evaluate, brackets, braces (list at the end).
- Uses from math-4 and math-3 (list at the end), in particular fraction, unit fraction, numerator, denominator, equivalent, like denominators, common denominator, common multiple, common factor, simplest form, benchmark fraction, mixed number, decompose, fifth, tenth, twelfth, sixth, eighth, hundredth, area, unit square, side length, area model, tape diagram, multiplicative comparison, remainder, distributive property, decimal.
- Everyday words, not keywords: whole, part, share, half, third, fourth, quarter, of (as in "2/3 of 6", which means 2/3 x 6), stretch, shrink, recipe.
- A term is used only after the lesson that teaches it, also inside this part: say "different denominators" before 01-unlike-denominators/01 teaches "unlike denominators", and do not say "scaling" before 05-scaling/01.
- **Common denominators**: the product of the denominators always works; a smaller common multiple works when there is one. Do not say "least common denominator" or "least common multiple" (grade 6). Answers may stay unsimplified unless the question asks for simplest form; say which you want.
- **Dividing**: do not say "reciprocal", "invert", "flip" or "keep, change, flip"; teach each quotient with a model and check it by multiplying. Never say that dividing always gives a smaller number, or that multiplying always gives a bigger one: 05-scaling and 06-dividing-unit-fractions show why both are false.
- **Scaling** is true for numbers greater than 0: say "a number greater than 0" in 05-scaling/03 and /04 (0 times anything is 0).
- Say "a fraction greater than 1", never "improper fraction". Answers may be fractions greater than 1 or mixed numbers.
- Every adding, subtracting or comparing problem refers to one whole (or wholes of the same size).
- Decimals: this part works in fractions. A step may remark that 3/4 = 3 ÷ 4 = 0.75 (part 2 teaches dividing like that), but no question needs decimal arithmetic.
- **Units in problems**: inches, feet, yards, miles, centimeters, meters, kilometers, grams, kilograms, liters, milliliters, pounds, ounces, cups (an everyday word), hours, minutes, dollars. Do not use pints, quarts, gallons, fluid ounces, tons or millimeters (part 4 teaches them), and do not convert units in a question.
- **Typed answers**: a `number` check reads 2 1/4, 9/4 and 2.25 alike; a `fraction` check takes a mixed number such as 2 1/4 only with `(equivalent)`. Use `fraction` with `(equivalent)` where any equal fraction is right, and say "in simplest form" where only that is. Accept every right way of writing an answer the question allows, one string per `(accept ...)`, at most 8.
- **Formulas**: mixed numbers are written `$2 1/4$`; put a fraction beside another number in round brackets, `$(3/4) * 10$`, `$10 * (3/4)$` and `(true "(3/4) * 10 = 15/2")`: learn reads `5 * 3/4` as (5 x 3)/4, so write the brackets every time and check every claim with python3. Write dividing with ÷ (`$(1/3) ÷ 4 = 1/12$`) except where the lesson's point is that a/b = a ÷ b. No commas in numbers inside formulas, `(from ...)`, `(true ...)` and `(answer ...)`.
- **Money**: written `\$3` or "3 dollars" in prose (a bare dollar sign starts a formula).
- Grade 5 words: sentences of 15 words or fewer, one new term a step, "you", present tense, numbers as digits, US spelling and units.

## 01-unlike-denominators/ -- Adding and subtracting with unlike denominators

Add and subtract fractions with unlike denominators by writing them with a common denominator. Standards: 5.NF.A.1.

1. `01-why-common-denominators.md` -- Explain with fraction bars why 1/2 + 1/3 is not 2/5, and why the parts must be the same size before you add them.  
   Standards: "5.NF.A.1". Keywords: "unlike denominators".
2. `02-finding-common-denominators.md` -- Find a common denominator for two fractions from a common multiple of their denominators, such as the product or a smaller common multiple.  
   Standards: "5.NF.A.1". Keywords: (none new).
3. `03-adding.md` -- Add two fractions with unlike denominators by writing equivalent fractions with a common denominator, such as 2/3 + 5/4 = 8/12 + 15/12 = 23/12.  
   Standards: "5.NF.A.1". Keywords: (none new).
4. `04-subtracting.md` -- Subtract two fractions with unlike denominators, such as 5/6 - 1/4 = 10/12 - 3/12 = 7/12.  
   Standards: "5.NF.A.1". Keywords: (none new).
5. `05-three-fractions.md` -- Add and subtract three fractions with unlike denominators, such as 1/2 + 1/3 + 1/6 = 1, and write the answer in simplest form.  
   Standards: "5.NF.A.1". Keywords: (none new).

## 02-mixed-numbers/ -- Mixed numbers and estimates

Add and subtract mixed numbers with unlike denominators, and judge answers with benchmark fractions. Standards: 5.NF.A.1, 5.NF.A.2.

1. `01-adding-mixed.md` -- Add mixed numbers with unlike denominators by adding the wholes and the parts, and regroup when the parts make more than 1, such as 2 3/4 + 1 1/3 = 4 1/12.  
   Standards: "5.NF.A.1". Keywords: (none new).
2. `02-subtracting-mixed.md` -- Subtract mixed numbers with unlike denominators, regrouping 1 whole when there are too few parts, such as 3 1/4 - 1 2/3 = 1 7/12.  
   Standards: "5.NF.A.1". Keywords: (none new).
3. `03-as-fractions.md` -- Add and subtract mixed numbers with unlike denominators by first writing each one as a fraction greater than 1.  
   Standards: "5.NF.A.1". Keywords: (none new).
4. `04-benchmark-estimates.md` -- Estimate a sum or difference of fractions with the benchmarks 0, 1/2 and 1, such as 2/5 + 1/2 is a little less than 1.  
   Standards: "5.NF.A.2". Keywords: (none new).
5. `05-reasonable-answers.md` -- Judge whether an answer is reasonable with an estimate, such as seeing that 2/5 + 1/2 = 3/7 cannot be right because 3/7 < 1/2.  
   Standards: "5.NF.A.2". Keywords: (none new).
6. `06-fraction-problems.md` -- Solve word problems that add and subtract fractions and mixed numbers with unlike denominators, all of the same whole, with models and equations.  
   Standards: "5.NF.A.2". Keywords: (none new).

## 03-fractions-as-division/ -- Fractions as division

Understand a/b as a ÷ b, and solve sharing problems whose answers are fractions or mixed numbers. Standards: 5.NF.B.3.

1. `01-sharing-wholes.md` -- Share a wholes equally among b people with a model, and show each share is a/b, such as 3 pancakes shared by 4 people: 3/4 each.  
   Standards: "5.NF.B.3". Keywords: (none new).
2. `02-fraction-is-division.md` -- Write a division as a fraction and a fraction as a division, a/b = a ÷ b, such as 3 ÷ 4 = 3/4 and 12/3 = 12 ÷ 3 = 4.  
   Standards: "5.NF.B.3". Keywords: (none new).
3. `03-mixed-number-quotients.md` -- Write a quotient greater than 1 as a mixed number, such as 17 ÷ 5 = 17/5 = 3 2/5, and link it to 17 ÷ 5 = 3 R 2.  
   Standards: "5.NF.B.3". Keywords: (none new).
4. `04-division-problems.md` -- Solve word problems that divide whole numbers with answers as fractions or mixed numbers, and tell between which two whole numbers the answer lies.  
   Standards: "5.NF.B.3". Keywords: (none new).
5. `05-remainder-or-fraction.md` -- Decide whether a division problem wants a whole number with a remainder or a fraction or mixed number, such as people in cars versus pizza shared.  
   Standards: "5.NF.B.3". Keywords: (none new).

## 04-multiplying-fractions/ -- Multiplying fractions

Multiply a fraction by a whole number or a fraction, and find areas of rectangles with fraction side lengths. Standards: 5.NF.B.4a, 5.NF.B.4b, 5.NF.B.6.

1. `01-fraction-of-a-number.md` -- Find a fraction of a whole number with a tape diagram: (2/3) x 6 means 2 of the 3 equal parts of 6, which is 4.  
   Standards: "5.NF.B.4a". Keywords: (none new).
2. `02-fraction-times-whole.md` -- Multiply a fraction by a whole number as a x q ÷ b, such as (3/4) x 10 = 30/4 = 7 1/2, and see it equals 10 x (3/4).  
   Standards: "5.NF.B.4a". Keywords: (none new).
3. `03-fraction-of-a-fraction.md` -- Find a fraction of a fraction with an area model, such as (1/2) x (1/3) = 1/6 and (2/3) x (4/5) = 8/15.  
   Standards: "5.NF.B.4a". Keywords: (none new).
4. `04-multiplying-fractions.md` -- Multiply two fractions by multiplying the numerators and the denominators, (a/b) x (c/d) = (a x c)/(b x d), and write the product in simplest form.  
   Standards: "5.NF.B.4a". Keywords: (none new).
5. `05-tiling-areas.md` -- Find the area of a rectangle with fraction side lengths by tiling it with squares whose sides are unit fractions, such as 2/3 by 3/4 = 6/12 square unit.  
   Standards: "5.NF.B.4b". Keywords: (none new).
6. `06-areas-by-multiplying.md` -- Show that tiling gives the same area as multiplying the side lengths, also for mixed-number sides, such as 1 1/2 by 2 1/3 = 3 1/2 square units.  
   Standards: "5.NF.B.4b". Keywords: (none new).
7. `07-multiplying-mixed-numbers.md` -- Multiply mixed numbers by writing them as fractions greater than 1 or with the distributive property, such as 2 1/2 x 3 = 7 1/2.  
   Standards: "5.NF.B.4a", "5.NF.B.6". Keywords: (none new).

## 05-scaling/ -- Multiplying as scaling

See multiplying as resizing, and tell whether a product is greater or less than a factor without multiplying. Standards: 5.NF.B.5a, 5.NF.B.5b, 5.NF.B.6.

1. `01-resizing.md` -- Explain multiplying as scaling: 3 x 4 stretches 4 to 3 times its size, and (1/2) x 4 shrinks 4 to half its size.  
   Standards: "5.NF.B.5a". Keywords: "scaling".
2. `02-size-of-the-product.md` -- Compare a product with one factor without multiplying, from the size of the other factor, such as 5 x (3/4) < 5 and 5 x (3/4) < 7 x (3/4).  
   Standards: "5.NF.B.5a". Keywords: (none new).
3. `03-greater-than-one.md` -- Explain why multiplying a number greater than 0 by a fraction greater than 1 gives a product greater than the number.  
   Standards: "5.NF.B.5b". Keywords: (none new).
4. `04-less-than-one.md` -- Explain why multiplying a number greater than 0 by a fraction less than 1 gives a product less than the number, and by 1 the same number.  
   Standards: "5.NF.B.5b". Keywords: (none new).
5. `05-times-one.md` -- Explain a/b = (n x a)/(n x b) as multiplying a/b by n/n, which is 1, so the size does not change.  
   Standards: "5.NF.B.5b". Keywords: (none new).
6. `06-multiplying-problems.md` -- Solve real-world problems that multiply fractions and mixed numbers, such as making 1 1/2 times a recipe.  
   Standards: "5.NF.B.6". Keywords: (none new).

## 06-dividing-unit-fractions/ -- Dividing with unit fractions

Divide a unit fraction by a whole number and a whole number by a unit fraction, with models, and check by multiplying. Standards: 5.NF.B.7a, 5.NF.B.7b, 5.NF.B.7c.

1. `01-unit-fraction-by-whole.md` -- Divide a unit fraction by a whole number with a model, such as 1/3 shared by 4 people: (1/3) ÷ 4 = 1/12.  
   Standards: "5.NF.B.7a". Keywords: (none new).
2. `02-checking-by-multiplying.md` -- Check a quotient such as (1/3) ÷ 4 = 1/12 by multiplying: (1/12) x 4 = 1/3.  
   Standards: "5.NF.B.7a". Keywords: (none new).
3. `03-whole-by-unit-fraction.md` -- Divide a whole number by a unit fraction by counting how many unit fractions fit, such as 4 ÷ (1/5) = 20, on a number line.  
   Standards: "5.NF.B.7b". Keywords: (none new).
4. `04-checking-whole-by-unit.md` -- Check a quotient such as 4 ÷ (1/5) = 20 by multiplying: 20 x (1/5) = 4, and see why it is greater than 4.  
   Standards: "5.NF.B.7b". Keywords: (none new).
5. `05-dividing-problems.md` -- Solve real-world problems that divide a unit fraction by a whole number or a whole number by a unit fraction, with a model and an equation.  
   Standards: "5.NF.B.7c". Keywords: (none new).
6. `06-multiply-or-divide.md` -- Decide whether a fraction word problem needs multiplying or dividing, and solve it.  
   Standards: "5.NF.B.7c", "5.NF.B.6". Keywords: (none new).

## Skills this part uses from parts 1 and 2

Parts 1 and 2 teach these; use them with a one-line reminder, never teach them again:

- Multiplying and dividing whole numbers, with remainders (part 1, 04-multiplying and 05-dividing; and math-4): products of numerators and denominators, sharing problems.
- The words expression, numerical expression and evaluate (part 2, 04-expressions/01-02), if a lesson needs them; parentheses are known from math-3.
- Optional: 3 ÷ 4 = 0.75 (part 2, 03-dividing-decimals/04), only as a remark.

## Skills later parts use from this part

- Part 4 uses: adding and subtracting fractions and mixed numbers with unlike denominators (01-unlike-denominators, 02-mixed-numbers) for line plots; fractions as division (03-fractions-as-division) for sharing a total equally on a line plot and for converting 30 inches to 2 1/2 feet; a fraction times a whole number and multiplying fractions (04-multiplying-fractions) for converting 3/4 foot to 9 inches.

## Terms taught later (do not use them in this part)

- Part 4 (`04-measurement-geometry`): millimeter, ton, fluid ounce, pint, quart, gallon, volume, solid figure, unit cube, cubic unit, cubic centimeter, cubic inch, cubic foot, rectangular prism, face (of a solid), edge (of a solid), base (of a prism), coordinate plane, axis (of a graph), origin (of a graph), ordered pair, x-axis, y-axis, coordinate (of a point), x-coordinate, y-coordinate, quadrant, corresponding terms, equilateral triangle, isosceles triangle, scalene triangle, subcategory, hierarchy.

Terms with a bracketed note are checked only inside math-5, so avoid the everyday word too: no "face" or "faces", "edge", "base", "origin", "axis" or "axes" in this part. "Volume" alone is a part-4 term; "liquid volume" is known.

Avoid anywhere in the course: "improper fraction" (say "a fraction greater than 1"), "trapezoid" and "trapezium", "long division", "least common multiple", "least common denominator", "greatest common factor" (grade 6), "reciprocal", "negative number".

## Terms taught before this part

From part 2 of math-5 (`02-decimal-operations-expressions`):

- expression (in math), numerical expression, evaluate, brackets (in math), braces (in math) (04-expressions).

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
