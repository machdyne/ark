# Outline: Place value and decimals

Part `01-place-value-decimals` of `math-5`, Grade 5 Math: 5 units, 35 lessons. This file has no number, so learn ignores it. Write each lesson with exactly the file name, objective and standards below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears. The course `needs` math-4, which needs math-3: every term they teach is known (list at the end) and is not taught again; a one-line reminder is fine.

The four parts of math-5 are written at the same time by four authors. This part is the first: it uses nothing from the other parts of math-5, and it must not use the words they teach (list under "Terms taught later").

## Standards in this part

CCSS grade 5 (codes as the standard numbers them; the meaning in short):

- `5.NBT.A.1` -- in a multi-digit number, a digit in one place is worth 10 times what it is worth in the place to its right and 1/10 of what it is worth in the place to its left.
- `5.NBT.A.2` -- explain patterns in the number of zeros of the product when multiplying a number by powers of 10, and in the placement of the decimal point when a decimal is multiplied or divided by a power of 10; use whole-number exponents to write powers of 10.
- `5.NBT.A.3` -- read, write and compare decimals to thousandths.
- `5.NBT.A.3a` -- read and write decimals to thousandths with base-ten numerals, number names and expanded form, such as 347.392 = 3 x 100 + 4 x 10 + 7 x 1 + 3 x (1/10) + 9 x (1/100) + 2 x (1/1000).
- `5.NBT.A.3b` -- compare two decimals to thousandths by the meaning of the digits in each place, recording with >, = and <.
- `5.NBT.A.4` -- use place value to round decimals to any place.
- `5.NBT.B.5` -- fluently multiply multi-digit whole numbers with the standard algorithm.
- `5.NBT.B.6` -- find whole-number quotients of whole numbers with up to 4-digit dividends and 2-digit divisors, with strategies based on place value, the properties of operations and the link between multiplying and dividing; explain with equations, rectangular arrays and area models.

Scope: whole numbers in this part stay below 10,000,000 (the place-value chart goes from millions to thousandths). Decimals go to thousandths and no further: no ten-thousandths, not even as the answer to a division by a power of ten. Exponents are whole numbers from 1 to 6, on 10 only (no 10 to the 0, no other bases).

## Figures

Your own figure procedures go in `lib/m5p1.scm` only, every name starting with `m5p1-`. Keep that file under 6 KB (aim for 5 KB: the course has 24 KB for all four parts). Do not edit the other parts' lib files. You may copy procedures from math-4's `lib/m4p1.scm` (`m4p1-chart`, `m4p1-area`, `m4p1-column`, `m4p1-partials`, `m4p1-quot`...) and `lib/m4p3.scm` (`m4p3-hund`, `m4p3-place`...) into yours, renamed with your prefix.

Built-in procedures that suit this part (learn_figures.md, "The library"):

- `base-ten` -- the ten-times idea with hundreds, tens and ones (it draws only up to hundreds: for thousandths use `grid` or your own procedure)
- `grid` -- a 10 by 10 square for hundredths; one of its small squares cut into 10 strips for thousandths
- `number-line`, `nl-mark`, `nl-jump` -- decimals between two hundredths, a line from 0.34 to 0.35 in thousandths, rounding to any place, jumps for partial quotients
- `frac-bar-at` -- a tape diagram (one bar in equal parts) for word problems
- `label`, `caption` -- place-value charts, area models, written methods

Procedures you may want to write in `lib/m5p1.scm` (suggestions; name them as you like, with the prefix):

- `m5p1-chart` -- a place-value chart from millions to thousandths with the decimal point between ones and tenths, and arrows "x 10" to the left and "÷ 10" to the right
- `m5p1-shift` -- digits in a chart moving 1, 2 or 3 places when a number is multiplied or divided by 10, 100 or 1,000 (a slider or a choice for the power; the chart in `still`)
- `m5p1-zoom` -- a number line in tenths or hundredths with one interval drawn larger below it, cut into 10
- `m5p1-column` -- the standard algorithm for multiplying: factors lined up by place, small regrouping digits above, one row a partial product, the sum under a line
- `m5p1-area` -- an area model with 2-4 columns and 1-2 rows, each part labelled with its product; caption it "not to scale" when the parts are not drawn in proportion
- `m5p1-quot` -- partial quotients written down the side of a division, as math-4 did

## Words

- Uses from math-4 and math-3 (see the list at the end): in particular standard form, word form, expanded form, standard algorithm, inverse operation, area model, partial product, remainder, partial quotient, decimal, decimal point, tenth, hundredth, estimate, round, regroup, factor, product, dividend, divisor, quotient, related facts, associative property, distributive property, multiple, fraction.
- Words from grades 1-4 that are not keywords: digit, place, place value, ones, tens, hundreds, thousands, ten thousands, hundred thousands, million, number line, sum, difference, greater, less, whole number, dollar, cent.
- A term is used only after the lesson that teaches it, also inside this part: do not say "power of ten" before 01-powers-of-ten/03, "exponent" before 01-powers-of-ten/04, "thousandth" in any sense before 02-thousandths/01 (in unit 01, write "1/1000" or say "3 places"), or "compatible numbers" before 05-dividing/02.
- **Exponents** are written `$10^3$` in a formula; in prose "10 to the 3rd power". Do not say "squared" or "cubed" (those words lean on area and volume, which part 4 teaches). An exponent counts the 10s that are multiplied; it is the number of zeros only for 10^n itself: say so with care (50 x 10^2 = 5,000 has 3 zeros).
- **The decimal point does not move.** When you multiply or divide by 10, 100 or 1,000, the digits move to other places; the decimal point stays between the ones and the tenths. "The decimal point seems to move" is allowed as a description of what you see; explain it with the digits.
- **Dividing**: grade 5 divides by place value, partial quotients and area models. Do not call any dividing method "the standard algorithm" and do not say "long division" (both are grade 6, 6.NS.B.2). The standard algorithm in this part is the one for multiplying (5.NBT.B.5) and, from math-4, for adding and subtracting.
- **Remainders**: in prose, "4,230 ÷ 21 = 201 R 9" or "201 remainder 9", never inside `$...$` (the letter R would be read as a variable); prove them with a claim such as `(true "4230 = 21 * 201 + 9")`.
- Rounding a halfway number up is the usual rule, not a law of nature: say so, as math-3 and math-4 do.
- Read a decimal by its last place: 2.045 is "2 and 45 thousandths"; the word "and" stands for the decimal point. "Two point zero four five" may be mentioned as another way people say it. Say "decimal point", never just "point", for the dot.
- **Numbers**: commas in prose for 4 or more digits (4,230; 1,000,000); no commas inside formulas, `(from ...)`, `(true ...)` and `(answer ...)` (learn reads a comma as an error). Signs: "x" for times and ÷ in prose; `*` inside formulas; `÷` in formulas for dividing. Do not write `a / b` in a formula to divide whole numbers: learn draws it as a fraction. Write a fraction times a number with brackets: `3 * (1/10)`, not `3 * 1/10`.
- **Typed answers**: a decimal answer is a `text` check that accepts every right way of writing it: `(accept "0.04")` `(accept ".04")`, and `(accept "0.040")` where trailing zeros are not wrong, one string per `(accept ...)`, at most 8. A `number` check would also take 4/100. Whole-number answers are `number` checks (they take "1,000" and "1000").
- **Money**: decimals of a dollar, written `\$3.45` or "3.45 dollars" in prose (a bare dollar sign starts a formula). This part does not add, subtract, multiply or divide decimals other than by 10, 100 and 1,000 (part 2 teaches the rest): keep money to comparing and rounding.
- Ordinals as digits ("the 3rd place to the right"), except the place names tenth, hundredth and thousandth.
- Grade 5 words: sentences of 15 words or fewer, one new term a step, "you", present tense, numbers as digits, US spelling and units.

## 01-powers-of-ten/ -- Place value and powers of ten

Explain how each place is worth 10 times the place to its right, and write powers of ten with exponents. Standards: 5.NBT.A.1, 5.NBT.A.2.

1. `01-ten-times-a-tenth.md` -- Explain that a digit in one place is worth 10 times what it is worth in the place to its right and 1/10 of what it is worth in the place to its left, such as 700 = 10 x 70 and 70 is 1/10 of 700.  
   Standards: "5.NBT.A.1". Keywords: (none new).
2. `02-tenths-and-hundredths.md` -- Use the same rule on both sides of the decimal point: 0.3 is 10 times 0.03, and 0.3 is 1/10 of 3.  
   Standards: "5.NBT.A.1". Keywords: (none new).
3. `03-powers-of-ten.md` -- Write 10, 100, 1,000 and 10,000 as products of 10s, such as 1,000 = 10 x 10 x 10, and call them powers of ten.  
   Standards: "5.NBT.A.2". Keywords: "power of ten".
4. `04-exponents.md` -- Write a power of ten with an exponent and read it, such as 10^3 = 10 x 10 x 10 = 1,000, "10 to the 3rd power".  
   Standards: "5.NBT.A.2". Keywords: "exponent".
5. `05-zeros-in-products.md` -- Multiply a whole number by a power of ten, such as 36 x 10^3 = 36,000, and explain the pattern in the number of zeros in the product.  
   Standards: "5.NBT.A.2". Keywords: (none new).
6. `06-dividing-by-powers.md` -- Divide a whole number that ends in zeros by 10, 100 or 1,000, such as 52,000 ÷ 1,000 = 52, and explain how each digit moves to a place to the right.  
   Standards: "5.NBT.A.2", "5.NBT.A.1". Keywords: (none new).
7. `07-powers-problems.md` -- Solve word problems that multiply or divide whole numbers by powers of ten, such as 10^3 boxes of 25 pins, writing the power with an exponent.  
   Standards: "5.NBT.A.2". Keywords: (none new).

## 02-thousandths/ -- Decimals to thousandths

Read, write and place decimals to thousandths, and multiply and divide decimals by powers of ten. Standards: 5.NBT.A.1, 5.NBT.A.2, 5.NBT.A.3, 5.NBT.A.3a.

1. `01-thousandths.md` -- Show a thousandth as 1/10 of a hundredth, and write a fraction with the denominator 1,000 as a decimal, such as 7/1000 = 0.007 and 45/1000 = 0.045.  
   Standards: "5.NBT.A.1", "5.NBT.A.3a". Keywords: "thousandth (of a whole)".
2. `02-place-value-chart.md` -- Name the place and the value of each digit in a decimal to thousandths, such as the 2 in 4.125, which is worth 2 hundredths.  
   Standards: "5.NBT.A.1", "5.NBT.A.3a". Keywords: (none new).
3. `03-reading-writing.md` -- Read and write decimals to thousandths in standard form and word form, such as 2.045 = 2 and 45 thousandths.  
   Standards: "5.NBT.A.3a". Keywords: (none new).
4. `04-expanded-form.md` -- Write a decimal to thousandths in expanded form with fractions and with decimals, such as 3.592 = 3 x 1 + 5 x (1/10) + 9 x (1/100) + 2 x (1/1000) = 3 + 0.5 + 0.09 + 0.002, and back in standard form.  
   Standards: "5.NBT.A.3a". Keywords: (none new).
5. `05-on-a-number-line.md` -- Place a decimal to thousandths on a number line between two hundredths cut into 10 parts, such as 0.347 between 0.34 and 0.35.  
   Standards: "5.NBT.A.3". Keywords: (none new).
6. `06-decimals-and-powers.md` -- Multiply and divide a decimal by 10, 100 and 1,000, such as 4.2 x 100 = 420 and 4.2 ÷ 100 = 0.042, and explain the pattern in where the decimal point falls.  
   Standards: "5.NBT.A.2". Keywords: (none new).
7. `07-exponents-and-decimals.md` -- Multiply and divide a decimal by a power of ten written with an exponent, such as 0.35 x 10^2 = 35 and 6.1 ÷ 10^2 = 0.061.  
   Standards: "5.NBT.A.2". Keywords: (none new).

## 03-comparing-rounding/ -- Comparing and rounding decimals

Compare and order decimals to thousandths, and round decimals to any place. Standards: 5.NBT.A.3b, 5.NBT.A.4.

1. `01-comparing.md` -- Compare two decimals to thousandths place by place, starting from the greatest place, and record the result with >, = or <.  
   Standards: "5.NBT.A.3b". Keywords: (none new).
2. `02-zeros-at-the-end.md` -- Explain why 0.4 = 0.40 = 0.400, and use it to compare decimals with different numbers of places, such as 0.4 > 0.375.  
   Standards: "5.NBT.A.3b". Keywords: (none new).
3. `03-ordering.md` -- Put three or four decimals to thousandths in order from least to greatest, by place value and on a number line.  
   Standards: "5.NBT.A.3b". Keywords: (none new).
4. `04-rounding-whole-tenth.md` -- Round a decimal to the nearest whole number or the nearest tenth on a number line, such as 6.73 to 7 and to 6.7.  
   Standards: "5.NBT.A.4". Keywords: (none new).
5. `05-rounding-any-place.md` -- Round a decimal to any place by looking at the digit to the right of that place, such as 3.476 to the nearest hundredth, 3.48.  
   Standards: "5.NBT.A.4". Keywords: (none new).
6. `06-decimal-problems.md` -- Solve word problems that compare, order and round decimals, such as race times in seconds and lengths in meters.  
   Standards: "5.NBT.A.3b", "5.NBT.A.4". Keywords: (none new).

## 04-multiplying/ -- Multiplying with the standard algorithm

Multiply multi-digit whole numbers with the standard algorithm, and check products with estimates. Standards: 5.NBT.B.5.

1. `01-estimating-products.md` -- Estimate a product by rounding each factor to its greatest place and using powers of ten, such as 382 x 47 is about 400 x 50 = 20,000.  
   Standards: "5.NBT.B.5", "5.NBT.A.2". Keywords: (none new).
2. `02-one-digit-algorithm.md` -- Multiply a number of up to 4 digits by a one-digit number with the standard algorithm, writing each regrouped digit above the next place.  
   Standards: "5.NBT.B.5". Keywords: (none new).
3. `03-area-model-to-algorithm.md` -- Match each row of the standard algorithm for a two-digit by two-digit product to the parts of an area model.  
   Standards: "5.NBT.B.5". Keywords: (none new).
4. `04-two-digit-algorithm.md` -- Multiply a three- or four-digit number by a two-digit number with the standard algorithm.  
   Standards: "5.NBT.B.5". Keywords: (none new).
5. `05-three-digit-algorithm.md` -- Multiply by a three-digit number with the standard algorithm, including factors with a zero, such as 406 x 238.  
   Standards: "5.NBT.B.5". Keywords: (none new).
6. `06-checking-products.md` -- Check a product with an estimate and by multiplying the factors in the other order.  
   Standards: "5.NBT.B.5". Keywords: (none new).
7. `07-multiplying-problems.md` -- Solve multi-step word problems that multiply multi-digit whole numbers.  
   Standards: "5.NBT.B.5". Keywords: (none new).

## 05-dividing/ -- Dividing by two-digit numbers

Divide numbers of up to 4 digits by two-digit numbers with place value, partial quotients and area models. Standards: 5.NBT.B.6.

1. `01-dividing-by-tens.md` -- Divide by a multiple of 10 with place value and related facts, such as 2,400 ÷ 60 = 40.  
   Standards: "5.NBT.B.6". Keywords: (none new).
2. `02-compatible-numbers.md` -- Estimate a quotient with compatible numbers, such as 2,350 ÷ 58 is about 2,400 ÷ 60 = 40.  
   Standards: "5.NBT.B.6". Keywords: "compatible numbers".
3. `03-partial-quotients.md` -- Divide a number of up to 4 digits by a two-digit number by taking away multiples of the divisor and adding the partial quotients.  
   Standards: "5.NBT.B.6". Keywords: (none new).
4. `04-area-model.md` -- Divide with an area model: find the unknown side of a rectangle from its area and a two-digit side.  
   Standards: "5.NBT.B.6". Keywords: (none new).
5. `05-place-by-place.md` -- Divide by a two-digit number place by place, estimating each digit of the quotient and changing a guess that is too big or too small.  
   Standards: "5.NBT.B.6". Keywords: (none new).
6. `06-zeros-and-remainders.md` -- Divide when the quotient has a zero or there is a remainder, such as 4,230 ÷ 21 = 201 R 9.  
   Standards: "5.NBT.B.6". Keywords: (none new).
7. `07-checking-quotients.md` -- Check a quotient by multiplying it by the divisor and adding the remainder, and with an estimate.  
   Standards: "5.NBT.B.6". Keywords: (none new).
8. `08-dividing-problems.md` -- Solve word problems that divide by a two-digit number, and decide what the remainder means in each one.  
   Standards: "5.NBT.B.6". Keywords: (none new).

## Skills later parts use from this part

Later parts are written at the same time as this one and rely on these lessons, so teach each one as its objective says:

- Part 2 uses: multiplying and dividing decimals by 10, 100 and 1,000 (02-thousandths/06, 07); place value and comparing to thousandths (02-thousandths, 03-comparing-rounding/01-03); rounding decimals (03-comparing-rounding/04, 05); the standard algorithm for multiplying (04-multiplying); dividing by two-digit numbers (05-dividing).
- Part 3 uses: multiplying and dividing whole numbers (04-multiplying, 05-dividing).
- Part 4 uses: powers of ten and decimals to thousandths for converting metric units (01-powers-of-ten, 02-thousandths/06), multiplying whole numbers for volume (04-multiplying).

## Terms taught later (do not use them in this part)

- Part 2 (`02-decimal-operations-expressions`): expression (in math), numerical expression, evaluate, brackets (in math), braces (in math).
- Part 3 (`03-fractions`): unlike denominators, scaling.
- Part 4 (`04-measurement-geometry`): millimeter, ton, fluid ounce, pint, quart, gallon, volume, solid figure, unit cube, cubic unit, cubic centimeter, cubic inch, cubic foot, rectangular prism, face (of a solid), edge (of a solid), base (of a prism), coordinate plane, axis (of a graph), origin (of a graph), ordered pair, x-axis, y-axis, coordinate (of a point), x-coordinate, y-coordinate, quadrant, corresponding terms, equilateral triangle, isosceles triangle, scalene triangle, subcategory, hierarchy.

Terms with a bracketed note are checked only inside math-5, so avoid the everyday word too: no "expression", "brackets", "braces", "face" or "faces" (also not "the open side faces the greater number": say "opens toward"), "edge", "base" (as a word alone; "base-ten blocks" is fine), "origin", "axis" or "axes" in this part. "Volume" alone is a part-4 term; "liquid volume" is known.

Avoid anywhere in the course: "improper fraction" (say "a fraction greater than 1"), "trapezoid" and "trapezium" (they mean different shapes in different countries), "long division", "least common multiple", "least common denominator", "greatest common factor" (grade 6), "reciprocal", "negative number".

## Terms taught before this part

From earlier parts of math-5: none (this is the first part).

From math-4 (known; do not teach again):

- Part 1 (`01-place-value-operations`): standard form, word form, expanded form, standard algorithm, inverse operation, area model, partial product, remainder, partial quotient, multiplicative comparison.
- Part 2 (`02-factors-patterns-fractions`): factor pair, divisible, common factor, common multiple, prime number, composite number, term (of a pattern), fifth (of a whole), tenth (of a whole), twelfth (of a whole), simplest form, benchmark fraction, common denominator, common numerator.
- Part 3 (`03-fractions-decimals`): decompose, like denominators, hundredth (of a whole), decimal, decimal point.
- Part 4 (`04-measurement-geometry`): kilometer, yard (unit of length), milliliter, weight, pound (unit of weight), ounce, formula, eighth inch, line segment, endpoint, ray (in geometry), angle, vertex (of an angle), acute angle, obtuse angle, perpendicular, parallel, degree (of an angle), straight angle, protractor, right triangle, acute triangle, obtuse triangle, parallelogram, line of symmetry.

From math-3 (known; do not teach again):

- Multiplication and division: equal groups, multiplication, multiply, equation, factor (of a product), product (of numbers), array, row (of an array), column (of an array), tape diagram, division, divide, dividend, divisor, quotient, related facts, unknown factor, property (of multiplication), commutative property, associative property, parentheses, distributive property, multiple (of a number), multiplication table, round (a number), estimate, regroup, order of operations.
- Fractions: sixth (of a whole), eighth (of a whole), fraction, unit fraction, numerator, denominator, fraction strip, interval (on a number line), equivalent (fractions), half inch, mixed number, quarter inch.
- Measurement and geometry: a.m., p.m., elapsed time, mass, balance (for mass), gram, kilogram, liquid volume, liter, key (of a graph), scale (of a graph), area, unit square, square unit, square centimeter, square meter, square inch, square foot, side length, rectilinear figure, perimeter, polygon, attribute, right angle, quadrilateral, rhombus, category (of shapes).
