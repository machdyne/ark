# Outline: Place value and operations

Part `01-place-value-operations` of `math-4`, Grade 4 Math: 6 units, 35 lessons. This file has no number, so learn ignores it. Write each lesson with exactly the file name, objective and standards below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears. The course `needs` math-3: every term math-3 teaches is known (list at the end) and is not taught again; a one-line reminder is fine.

## Standards in this part

CCSS grade 4 (codes as the standard numbers them; the meaning in short):

- `4.NBT.A.1` -- in a multi-digit whole number, a digit in one place is worth 10 times what it is worth in the place to its right.
- `4.NBT.A.2` -- read and write multi-digit whole numbers in base-ten numerals (standard form), number names (word form) and expanded form; compare two of them with >, = and <.
- `4.NBT.A.3` -- round multi-digit whole numbers to any place.
- `4.NBT.B.4` -- add and subtract multi-digit whole numbers fluently with the standard algorithm.
- `4.NBT.B.5` -- multiply a whole number of up to 4 digits by a 1-digit number, and two 2-digit numbers, with strategies based on place value and the properties; explain with equations, rectangular arrays and area models.
- `4.NBT.B.6` -- find whole-number quotients and remainders with up to 4-digit dividends and 1-digit divisors, with strategies based on place value, the properties and the link between multiplying and dividing; explain with equations, arrays and area models.
- `4.OA.A.1` -- read a multiplication equation as a comparison: 35 = 5 x 7 says 35 is 5 times as many as 7.
- `4.OA.A.2` -- multiply or divide to solve word problems with multiplicative comparison, using drawings and equations with a symbol for the unknown, and tell it apart from additive comparison.
- `4.OA.A.3` -- solve multi-step word problems with whole numbers and the four operations, including problems where remainders must be interpreted; write equations with a letter for the unknown; check that answers are reasonable with mental math and estimation, including rounding.

All numbers in this part are whole numbers up to 1,000,000 (the standard's limit).

## Figures

Your own figure procedures go in `lib/m4p1.scm` only, every name starting with `m4p1-`. Keep that file under 6 KB (aim for 5 KB: the course has 24 KB for all four parts). Do not edit the other parts' lib files. You may copy procedures from math-3's `lib/md.scm` (`md-tape`, `md-column`, `md-ten`, `md-jumps`...) into yours, renamed with your prefix.

Built-in procedures that suit this part (learn_figures.md, "The library"):

- `base-ten` -- hundreds, tens and ones blocks for the ten-times idea and for regrouping (it draws only up to hundreds: show thousands with your own procedure or with labels)
- `number-line`, `nl-mark`, `nl-jump` -- rounding to any place, placing and comparing big numbers, jumps for partial quotients
- `grid`, `dot-array` -- arrays for small products and for sharing with a remainder
- `frac-bar-at` -- a tape diagram (one bar in equal parts; do not call the parts fractions here)
- `label`, `caption`, `text`, `frame`, `line` -- place-value charts, area models, written methods

Procedures you may want to write in `lib/m4p1.scm` (suggestions; name them as you like, with the prefix):

- `m4p1-chart` -- a place-value chart from hundred thousands to ones, with digits in the columns and a comma after the thousands
- `m4p1-area` -- an area model: a rectangle split into 2, 3 or 4 parts (or 2 by 2), each part labelled with its partial product; draw the parts roughly in proportion and caption it "not to scale" when they are not
- `m4p1-column` -- numbers lined up by place for the standard algorithm, with small regrouping digits above
- `m4p1-compare` -- a comparison tape: one bar, and a bar made of n copies of it, with the total marked

## Words

- Known from math-3 and may be used freely: all the terms at the end of this file, and grade 1-2 words: digit, place value, ones, tens, hundreds, thousand, number line, sum, difference, even, odd, greater than, less than, compare, whole number, dollar, cent.
- Do not use terms that later parts teach (the list is under "Terms taught later"). In particular: say "number in the pattern", not "term"; write ordinals as digits ("the 5th row", "the 10th"), never "fifth", "tenth", "twelfth" or "hundredth"; do not say "angle" (except "right angle"), "decimal", "formula", "divisible", "prime", "weight", "pound" or "yard" (in any sense, not even a garden: say "garden" or "field").
- A term is used only after the lesson that teaches it, also inside this part: say "the parts you add" before 03-multiplying-one-digit/03 teaches "partial product", and do not say "remainder" before 05-dividing/01 or "area model" before 03-multiplying-one-digit/02.
- **Grade 4 multiplying and dividing are by place value, not by a set method.** The standard algorithm is taught here only for adding and subtracting (4.NBT.B.4). Do not call any multiplying or dividing method "the standard algorithm" (that is grade 5 for multiplying and grade 6 for dividing), and do not use the term "long division". A written method that records partial products or partial quotients is fine.
- **Numbers with 4 or more digits**: in prose, write them with commas (4,000; 40,306; 1,000,000). Inside formulas (`$...$`, `$$...$$`), `(from ...)`, `(true ...)` and `(answer ...)` write them **without commas** (`$40306 = 40000 + 300 + 6$`): learn's formulas read a comma as an error. A typed `number` answer accepts "1,000" and "1000" by itself; a `text` answer needs both as two `(accept ...)` lines.
- **Remainders**: write them in prose, "17 ÷ 5 = 3 R 2" or "3 remainder 2", never inside `$...$` (the letter R would be read as a variable). Prove them with a claim such as `(true "17 = 5 * 3 + 2")`.
- Signs as in math-3: "x" for times and ÷ for divided by in prose; `*` inside formulas. Do not write `a / b` in a formula for dividing whole numbers: learn draws it as a fraction.
- Rounding a halfway number up is the usual rule, not a law of nature: say so, as math-3 does.
- Money in this part: whole dollars or whole cents only (decimals are taught in part 3). The dollar sign starts a formula in learn's Markdown: in prose write `\$25` or "25 dollars".
- Grade 4 words: sentences of 15 words or fewer, one new term a step, "you", present tense, numbers as digits, US spelling and units.

## 01-place-value/ -- Place value to a million

Read, write and compare whole numbers up to 1,000,000 by place value. Standards: 4.NBT.A.1, 4.NBT.A.2.

1. `01-to-ten-thousands.md` -- Name the place and the value of each digit in a number up to 99,999, reading the comma after the thousands.  
   Standards: "4.NBT.A.2". Keywords: (none new).
2. `02-to-a-million.md` -- Read and write numbers up to 1,000,000, naming the hundred thousands place and the value of each digit.  
   Standards: "4.NBT.A.2". Keywords: (none new).
3. `03-ten-times.md` -- Explain that a digit in one place is worth 10 times what it is worth in the place to its right, such as 700 = 10 x 70.  
   Standards: "4.NBT.A.1". Keywords: (none new).
4. `04-standard-and-word-form.md` -- Write a number in standard form and in word form, and change one into the other.  
   Standards: "4.NBT.A.2". Keywords: "standard form", "word form".
5. `05-expanded-form.md` -- Write a number in expanded form, such as 40,306 = 40,000 + 300 + 6, and back in standard form.  
   Standards: "4.NBT.A.2". Keywords: "expanded form".
6. `06-comparing.md` -- Compare and order numbers up to 1,000,000 by place value, starting from the greatest place, and record with >, = or <.  
   Standards: "4.NBT.A.2". Keywords: (none new).

## 02-rounding-adding/ -- Rounding, adding and subtracting

Round big numbers to any place, and add and subtract them with the standard algorithm. Standards: 4.NBT.A.3, 4.NBT.B.4.

1. `01-rounding.md` -- Round a number up to 1,000,000 to the nearest 10, 100 or 1,000 on a number line.  
   Standards: "4.NBT.A.3". Keywords: (none new).
2. `02-rounding-any-place.md` -- Round a number to any place, up to the nearest 100,000, by looking at the digit to the right of that place.  
   Standards: "4.NBT.A.3". Keywords: (none new).
3. `03-adding.md` -- Add multi-digit numbers with the standard algorithm, lining up the places and regrouping.  
   Standards: "4.NBT.B.4". Keywords: "standard algorithm".
4. `04-subtracting.md` -- Subtract multi-digit numbers with the standard algorithm, regrouping from the next place when a place has too few.  
   Standards: "4.NBT.B.4". Keywords: (none new).
5. `05-across-zeros.md` -- Subtract from a number with zeros, such as 40,000 - 2,568, regrouping across several places.  
   Standards: "4.NBT.B.4". Keywords: (none new).
6. `06-checking.md` -- Check a sum or a difference with an estimate and with the inverse operation.  
   Standards: "4.NBT.B.4", "4.NBT.A.3". Keywords: "inverse operation".

## 03-multiplying-one-digit/ -- Multiplying by a one-digit number

Multiply a number of up to 4 digits by a one-digit number with place value and area models. Standards: 4.NBT.B.5.

1. `01-tens-hundreds-thousands.md` -- Multiply a one-digit number by a multiple of 10, 100 or 1,000, such as 6 x 400 = 2,400, with place value.  
   Standards: "4.NBT.B.5". Keywords: (none new).
2. `02-area-model.md` -- Multiply a two-digit number by a one-digit number with an area model split by place value.  
   Standards: "4.NBT.B.5". Keywords: "area model".
3. `03-partial-products.md` -- Multiply by breaking the bigger factor into its places and adding the partial products, such as 7 x 46 = 280 + 42.  
   Standards: "4.NBT.B.5". Keywords: "partial product".
4. `04-larger-numbers.md` -- Multiply a three- or four-digit number by a one-digit number with partial products.  
   Standards: "4.NBT.B.5". Keywords: (none new).
5. `05-estimating-products.md` -- Estimate a product by rounding the bigger factor, and use the estimate to check an answer.  
   Standards: "4.NBT.B.5". Keywords: (none new).
6. `06-multiplying-problems.md` -- Solve one-step word problems by multiplying a number of up to 4 digits by a one-digit number.  
   Standards: "4.NBT.B.5". Keywords: (none new).

## 04-multiplying-two-digit/ -- Multiplying two two-digit numbers

Multiply two two-digit numbers with area models and partial products. Standards: 4.NBT.B.5.

1. `01-multiples-of-ten.md` -- Multiply two multiples of 10, such as 30 x 40 = 1,200, with place value and the associative property.  
   Standards: "4.NBT.B.5". Keywords: (none new).
2. `02-two-by-two-area-model.md` -- Multiply two two-digit numbers with an area model of 4 parts.  
   Standards: "4.NBT.B.5". Keywords: (none new).
3. `03-four-partial-products.md` -- Multiply two two-digit numbers by writing and adding their 4 partial products.  
   Standards: "4.NBT.B.5". Keywords: (none new).
4. `04-checking-products.md` -- Check a two-digit product with an estimate and by multiplying the factors in the other order.  
   Standards: "4.NBT.B.5". Keywords: (none new).
5. `05-two-digit-problems.md` -- Solve word problems that multiply two two-digit numbers.  
   Standards: "4.NBT.B.5". Keywords: (none new).

## 05-dividing/ -- Dividing with remainders

Divide a number of up to 4 digits by a one-digit number, with and without a remainder. Standards: 4.NBT.B.6.

1. `01-remainders.md` -- Divide when a total does not share out equally, and name what is left over as the remainder.  
   Standards: "4.NBT.B.6". Keywords: "remainder".
2. `02-dividing-multiples.md` -- Divide a multiple of 10, 100 or 1,000 by a one-digit number, such as 2,400 ÷ 6 = 400, with place value and related facts.  
   Standards: "4.NBT.B.6". Keywords: (none new).
3. `03-partial-quotients.md` -- Divide a two- or three-digit number by a one-digit number by taking away easy multiples of the divisor and adding the partial quotients.  
   Standards: "4.NBT.B.6". Keywords: "partial quotient".
4. `04-area-model-division.md` -- Divide with an area model: find the unknown side of a rectangle from its area and one side.  
   Standards: "4.NBT.B.6". Keywords: (none new).
5. `05-place-by-place.md` -- Divide a number of up to 4 digits by a one-digit number place by place, sharing the thousands, hundreds, tens and ones in turn.  
   Standards: "4.NBT.B.6". Keywords: (none new).
6. `06-checking-quotients.md` -- Check a quotient by multiplying it by the divisor and adding the remainder.  
   Standards: "4.NBT.B.6". Keywords: (none new).

## 06-comparing-problems/ -- Comparisons and multi-step problems

Solve comparison and multi-step word problems, interpret remainders and check that answers make sense. Standards: 4.OA.A.1, 4.OA.A.2, 4.OA.A.3.

1. `01-times-as-many.md` -- Read 35 = 5 x 7 as "35 is 5 times as many as 7", and write an equation for a statement that compares by multiplying.  
   Standards: "4.OA.A.1". Keywords: "multiplicative comparison".
2. `02-comparison-problems.md` -- Solve comparison word problems by multiplying or dividing with a tape diagram, and tell them apart from problems that compare by adding or subtracting.  
   Standards: "4.OA.A.2". Keywords: (none new).
3. `03-multi-step.md` -- Solve multi-step word problems with the four operations, writing an equation with a letter for the unknown.  
   Standards: "4.OA.A.3". Keywords: (none new).
4. `04-interpreting-remainders.md` -- Decide what a remainder means in a word problem: leave it out, add 1 to the quotient, or give the remainder as the answer.  
   Standards: "4.OA.A.3", "4.NBT.B.6". Keywords: (none new).
5. `05-reasonable-answers.md` -- Check the answer to a multi-step problem with mental math and an estimate made by rounding.  
   Standards: "4.OA.A.3". Keywords: (none new).
6. `06-mixed-problems.md` -- Solve word problems that need any of adding, subtracting, multiplying and dividing with big numbers.  
   Standards: "4.OA.A.3", "4.NBT.B.4", "4.NBT.B.5", "4.NBT.B.6". Keywords: (none new).

## Terms taught later (do not use them in this part)

- Part 2: factor pair, divisible, common factor, common multiple, prime number, composite number, term (of a pattern), fifth, tenth, twelfth (of a whole), simplest form, benchmark fraction, common denominator, common numerator.
- Part 3: decompose, like denominators, hundredth (of a whole), decimal, decimal point.
- Part 4: kilometer, yard (unit of length), milliliter, weight, pound (unit of weight), ounce, formula, eighth inch, line segment, endpoint, ray (in geometry), angle, vertex (of an angle), acute angle, obtuse angle, perpendicular, parallel, degree (of an angle), straight angle, protractor, right triangle, acute triangle, obtuse triangle, parallelogram, line of symmetry.

Avoid also the name "Ray" for a person in a problem (it would read as the geometry term), and "improper fraction", "trapezoid", "long division" anywhere in the course.

## Terms taught before this part

From math-3 (known; do not teach again):

- Multiplication and division: equal groups, multiplication, multiply, equation, factor (of a product), product (of numbers), array, row (of an array), column (of an array), tape diagram, division, divide, dividend, divisor, quotient, related facts, unknown factor, property (of multiplication), commutative property, associative property, parentheses, distributive property, multiple (of a number), multiplication table, round (a number), estimate, regroup, order of operations.
- Fractions: sixth (of a whole), eighth (of a whole), fraction, unit fraction, numerator, denominator, fraction strip, interval (on a number line), equivalent (fractions), half inch, mixed number, quarter inch.
- Measurement and geometry: a.m., p.m., elapsed time, mass, balance (for mass), gram, kilogram, liquid volume, liter, key (of a graph), scale (of a graph), area, unit square, square unit, square centimeter, square meter, square inch, square foot, side length, rectilinear figure, perimeter, polygon, attribute, right angle, quadrilateral, rhombus, category (of shapes).

From earlier parts of math-4: none (this is the first part).
