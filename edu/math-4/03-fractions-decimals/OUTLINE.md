# Outline: Adding fractions and decimals

Part `03-fractions-decimals` of `math-4`, Grade 4 Math: 6 units, 35 lessons. This file has no number, so learn ignores it. Write each lesson with exactly the file name, objective and standards below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears. The course `needs` math-3: every term math-3 and parts 1-2 teach is known (list at the end) and is not taught again; a one-line reminder is fine.

## Standards in this part

CCSS grade 4 (codes as the standard numbers them; the meaning in short):

- `4.NF.B.3a` -- adding and subtracting fractions is joining and separating parts that refer to the same whole.
- `4.NF.B.3b` -- decompose a fraction into a sum of fractions with the same denominator in more than one way, recording each with an equation and justifying it with a model: 3/8 = 1/8 + 1/8 + 1/8; 3/8 = 1/8 + 2/8; 2 1/8 = 1 + 1 + 1/8 = 8/8 + 8/8 + 1/8.
- `4.NF.B.3c` -- add and subtract mixed numbers with like denominators, for example by replacing each mixed number with an equivalent fraction, or by using properties of operations and the relation between adding and subtracting.
- `4.NF.B.3d` -- solve word problems that add and subtract fractions referring to the same whole and having like denominators.
- `4.NF.B.4a` -- understand a fraction a/b as a multiple of 1/b: 5/4 = 5 x (1/4).
- `4.NF.B.4b` -- understand a multiple of a/b as a multiple of 1/b, and use this to multiply a fraction by a whole number: 3 x (2/5) = 6 x (1/5) = 6/5; n x (a/b) = (n x a)/b.
- `4.NF.B.4c` -- solve word problems that multiply a fraction by a whole number, and say between which two whole numbers the answer lies.
- `4.NF.C.5` -- write a fraction with denominator 10 as an equivalent fraction with denominator 100, and use this to add two fractions with denominators 10 and 100: 3/10 + 4/100 = 34/100.
- `4.NF.C.6` -- use decimal notation for fractions with denominators 10 or 100: 0.62 = 62/100; a length of 0.62 meters; 0.62 on a number line.
- `4.NF.C.7` -- compare two decimals to hundredths by reasoning about their size; a comparison holds only when both refer to the same whole; record with >, = or < and justify with a model.

Denominators in this part: 2, 3, 4, 5, 6, 8, 10, 12 and 100 (the standard's note). Adding and subtracting only with like denominators, except tenths plus hundredths (4.NF.C.5). Multiplying only a whole number times a fraction. Decimals only to hundredths; no adding or subtracting of decimals written as decimals (that is grade 5).

## Figures

Your own figure procedures go in `lib/m4p3.scm` only, every name starting with `m4p3-`. Keep that file under 6 KB (aim for 5 KB: the course has 24 KB for all four parts). Do not edit the other parts' lib files. You may copy procedures from math-3's `lib/fr.scm` (`fr-mixed`, `fr-line`, `fr-point`...) into yours, renamed with your prefix.

Built-in procedures that suit this part (learn_figures.md, "The library"):

- `frac-bar`, `frac-bar-at` -- joining and separating parts, unit fractions in a sum, mixed numbers as whole bars and a part, equal groups of a fraction
- `number-line`, `nl-mark`, `nl-jump` -- sums as jumps of 1/b, a whole number times a fraction as equal jumps, decimals on a line from 0 to 1 cut in tenths or hundredths
- `grid` -- a 10 by 10 square for hundredths (`(grid x y 10 10 size)` with shaded squares on top), a 1 by 10 strip for tenths
- `label`, `caption`

Procedures you may want to write in `lib/m4p3.scm` (suggestions; name them as you like, with the prefix):

- `m4p3-hundredths` -- a 10 by 10 square with the first n hundredths shaded, whole columns first, so tenths and hundredths both show
- `m4p3-place` -- a place-value chart "ones . tenths hundredths" with digits and the decimal point
- `m4p3-wholes` -- a mixed number as whole bars and one part-shaded bar, labelled

## Words

- Uses from part 1: standard form, word form, expanded form, standard algorithm, inverse operation, area model, partial product, remainder, partial quotient, multiplicative comparison.
- Uses from part 2: factor pair, divisible, common factor, common multiple, prime number, composite number, term (of a pattern), fifth, tenth, twelfth (of a whole), simplest form, benchmark fraction, common denominator, common numerator.
- Uses from math-3 (see the list at the end), in particular fraction, unit fraction, numerator, denominator, equivalent, mixed number (math-3 teaches it, in 02-fractions/07-measuring/01: do not teach it again), interval, multiple, regroup, estimate.
- Everyday words, not keywords: whole, part, join, separate, cent, dollar, meter, centimeter (1 meter = 100 centimeters may be stated as a fact).
- A term is used only after the lesson that teaches it, also inside this part: say "the same denominator" before 01-adding-fractions/04 teaches "like denominators", and do not say "hundredth" before 04-tenths-hundredths/01 or "decimal" before 05-decimals/01.
- Say "a fraction greater than 1", not "improper fraction". Answers may be fractions greater than 1 or mixed numbers; in 01-adding-fractions keep sums at or below 1, or write them as fractions greater than 1 (changing them to mixed numbers is taught in 02-mixed-numbers).
- Every adding, subtracting or comparing problem refers to one whole (or two wholes of the same size).
- Do not use pounds, ounces, yards, kilometers or milliliters in problems (part 4 teaches them): use meters, centimeters, inches, feet, liters, kilograms, grams, hours, dollars and cents.
- Say "decimal point", never just "point", for the dot in 0.62. Read 0.62 as "62 hundredths" (and "zero point six two" may be mentioned as another way people say it).
- **Typed answers**: a `number` check reads 2 1/4, 9/4 and 2.25 alike, and "1,000" as 1000; a `fraction` check takes a mixed number such as 2 1/4 only with `(equivalent)`. Accept every right way of writing an answer the question allows; run the preview to be sure. Decimals: accept 0.5 and .5.
- **Formulas**: mixed numbers are written `$2 1/4$`; no commas in numbers inside formulas, `(from ...)`, `(true ...)` and `(answer ...)`. `(true "3/10 + 4/100 = 34/100")`, `(true "0.62 = 62/100")` and `(true "3 * 2/5 = 6/5")` work as written.
- **The dollar sign** starts a formula in learn's Markdown: in prose write it `\$3.45` (or write "3.45 dollars"); check every money step in the preview.
- Grade 4 words: sentences of 15 words or fewer, one new term a step, "you", present tense, numbers as digits, US spelling and units.

## 01-adding-fractions/ -- Adding and subtracting fractions

Add and subtract fractions with like denominators as joining and separating parts of one whole. Standards: 4.NF.B.3a, 4.NF.B.3b, 4.NF.B.3d.

1. `01-joining-parts.md` -- Explain adding fractions as joining parts of the same whole, such as 2/5 + 1/5 = 3/5, with a bar and a number line.  
   Standards: "4.NF.B.3a". Keywords: (none new).
2. `02-unit-fraction-sums.md` -- Write a fraction as a sum of unit fractions, such as 3/8 = 1/8 + 1/8 + 1/8.  
   Standards: "4.NF.B.3b". Keywords: (none new).
3. `03-decomposing.md` -- Decompose a fraction into a sum of fractions with the same denominator in more than one way, such as 5/6 = 2/6 + 3/6 = 1/6 + 4/6, and record each with an equation.  
   Standards: "4.NF.B.3b". Keywords: "decompose".
4. `04-like-denominators.md` -- Add fractions with like denominators by adding the numerators and keeping the denominator, and explain why the denominator stays the same.  
   Standards: "4.NF.B.3a". Keywords: "like denominators".
5. `05-separating-parts.md` -- Subtract fractions with like denominators as taking parts away from the same whole, including 1 - 3/8 = 8/8 - 3/8.  
   Standards: "4.NF.B.3a". Keywords: (none new).
6. `06-fraction-problems.md` -- Solve word problems that add or subtract fractions with like denominators referring to the same whole.  
   Standards: "4.NF.B.3d". Keywords: (none new).

## 02-mixed-numbers/ -- Adding and subtracting mixed numbers

Write mixed numbers as sums and as fractions, and add and subtract them with like denominators. Standards: 4.NF.B.3b, 4.NF.B.3c, 4.NF.B.3d.

1. `01-wholes-and-parts.md` -- Decompose a mixed number into wholes and a fraction, such as 2 1/8 = 1 + 1 + 1/8 = 8/8 + 8/8 + 1/8.  
   Standards: "4.NF.B.3b". Keywords: (none new).
2. `02-mixed-to-fraction.md` -- Write a mixed number as a fraction greater than 1, such as 2 1/4 = 9/4.  
   Standards: "4.NF.B.3b". Keywords: (none new).
3. `03-fraction-to-mixed.md` -- Write a fraction greater than 1 as a mixed number, such as 11/4 = 2 3/4, by taking out the wholes.  
   Standards: "4.NF.B.3b". Keywords: (none new).
4. `04-adding-mixed.md` -- Add mixed numbers with like denominators by adding the wholes and the parts, and regroup when the parts make a whole.  
   Standards: "4.NF.B.3c". Keywords: (none new).
5. `05-subtracting-mixed.md` -- Subtract mixed numbers with like denominators, regrouping 1 whole into parts when there are too few parts.  
   Standards: "4.NF.B.3c". Keywords: (none new).
6. `06-as-fractions.md` -- Add and subtract mixed numbers with like denominators by first writing each one as a fraction greater than 1.  
   Standards: "4.NF.B.3c". Keywords: (none new).
7. `07-mixed-number-problems.md` -- Solve word problems that add or subtract mixed numbers with like denominators.  
   Standards: "4.NF.B.3c", "4.NF.B.3d". Keywords: (none new).

## 03-times-whole/ -- A whole number times a fraction

Multiply a fraction by a whole number, and use it in word problems. Standards: 4.NF.B.4a, 4.NF.B.4b, 4.NF.B.4c.

1. `01-unit-fraction-multiples.md` -- Write a fraction as a multiple of a unit fraction, such as 5/4 = 5 x 1/4.  
   Standards: "4.NF.B.4a". Keywords: (none new).
2. `02-equal-jumps.md` -- Show a whole number times a unit fraction as equal jumps on a number line and as equal groups of bars.  
   Standards: "4.NF.B.4a", "4.NF.B.4b". Keywords: (none new).
3. `03-whole-times-fraction.md` -- Multiply a whole number by a fraction by counting unit fractions: 3 x 2/5 = 6 x 1/5 = 6/5.  
   Standards: "4.NF.B.4b". Keywords: (none new).
4. `04-multiplying-numerators.md` -- Use n x a/b = (n x a)/b to multiply, and write a product greater than 1 as a mixed number.  
   Standards: "4.NF.B.4b". Keywords: (none new).
5. `05-between-whole-numbers.md` -- Tell between which two whole numbers a product such as 5 x 3/8 lies.  
   Standards: "4.NF.B.4c". Keywords: (none new).
6. `06-times-problems.md` -- Solve word problems that multiply a fraction by a whole number, such as 5 people who each drink 3/4 liter.  
   Standards: "4.NF.B.4c". Keywords: (none new).

## 04-tenths-hundredths/ -- Tenths and hundredths

Write tenths as hundredths and add a fraction in tenths to one in hundredths. Standards: 4.NF.C.5.

1. `01-hundredths.md` -- Show hundredths with a 10 by 10 square and write fractions with the denominator 100.  
   Standards: "4.NF.C.5". Keywords: "hundredth (of a whole)".
2. `02-tenths-as-hundredths.md` -- Write a fraction in tenths as an equivalent fraction in hundredths, such as 3/10 = 30/100, and show it with a 10 by 10 square.  
   Standards: "4.NF.C.5". Keywords: (none new).
3. `03-adding-tenths-hundredths.md` -- Add a fraction in tenths and one in hundredths by first writing the tenths as hundredths: 3/10 + 4/100 = 34/100.  
   Standards: "4.NF.C.5". Keywords: (none new).
4. `04-sums-over-one.md` -- Add tenths and hundredths whose sum is greater than 1, such as 7/10 + 45/100 = 115/100 = 1 15/100.  
   Standards: "4.NF.C.5". Keywords: (none new).
5. `05-tenths-hundredths-problems.md` -- Solve word problems that add a fraction in tenths and one in hundredths.  
   Standards: "4.NF.C.5". Keywords: (none new).

## 05-decimals/ -- Decimals

Write tenths and hundredths as decimals and place them on a number line. Standards: 4.NF.C.6.

1. `01-decimal-tenths.md` -- Write a fraction in tenths as a decimal, such as 3/10 = 0.3, and read it.  
   Standards: "4.NF.C.6". Keywords: "decimal", "decimal point".
2. `02-decimal-hundredths.md` -- Write a fraction in hundredths as a decimal, such as 62/100 = 0.62, and name the tenths and hundredths places.  
   Standards: "4.NF.C.6". Keywords: (none new).
3. `03-greater-than-one.md` -- Write a mixed number with tenths or hundredths as a decimal, such as 3 7/100 = 3.07, and back.  
   Standards: "4.NF.C.6". Keywords: (none new).
4. `04-decimals-on-a-line.md` -- Place decimals to hundredths on a number line, such as 0.62 between 0.6 and 0.7.  
   Standards: "4.NF.C.6". Keywords: (none new).
5. `05-decimal-lengths.md` -- Describe lengths as decimals of a meter, such as 62 centimeters = 0.62 meter.  
   Standards: "4.NF.C.6". Keywords: (none new).
6. `06-money.md` -- Write amounts of money as decimals of a dollar, such as 1 cent = 1/100 dollar = 0.01 dollar, and 3 dollars 45 cents as 3.45 dollars.  
   Standards: "4.NF.C.6". Keywords: (none new).

## 06-comparing-decimals/ -- Comparing decimals

Compare and order decimals to hundredths by their size, and justify with models. Standards: 4.NF.C.7.

1. `01-comparing-tenths.md` -- Compare two decimals in tenths with a model and a number line, and record with >, = or <.  
   Standards: "4.NF.C.7". Keywords: (none new).
2. `02-comparing-hundredths.md` -- Compare decimals to hundredths by place value, such as 0.7 > 0.65 because 0.7 = 0.70.  
   Standards: "4.NF.C.7". Keywords: (none new).
3. `03-same-whole.md` -- Explain why two decimals can be compared only when they refer to the same whole.  
   Standards: "4.NF.C.7". Keywords: (none new).
4. `04-ordering-decimals.md` -- Put three or four decimals to hundredths in order on a number line.  
   Standards: "4.NF.C.7". Keywords: (none new).
5. `05-decimal-problems.md` -- Solve word problems that compare decimals and fractions in tenths and hundredths, such as lengths and prices.  
   Standards: "4.NF.C.7", "4.NF.C.6". Keywords: (none new).

## Terms taught later (do not use them in this part)

- Part 4: kilometer, yard (unit of length), milliliter, weight, pound (unit of weight), ounce, formula, eighth inch, line segment, endpoint, ray (in geometry), angle (except "right angle", known), vertex (of an angle), acute angle, obtuse angle, perpendicular, parallel, degree (of an angle), straight angle, protractor, right triangle, acute triangle, obtuse triangle, parallelogram, line of symmetry.

Avoid also the name "Ray" for a person in a problem, "yard" in any sense (say "garden"), and "improper fraction", "trapezoid", "long division" anywhere in the course.

## Terms taught before this part

From part 2 of math-4 (`02-factors-patterns-fractions`):

- factor pair, divisible, common factor (01-factors); common multiple, prime number, composite number (02-multiples-primes); term (of a pattern) (03-patterns); fifth (of a whole), tenth (of a whole), twelfth (of a whole), simplest form (04-equivalent); benchmark fraction (05-benchmarks); common denominator, common numerator (06-comparing).

From part 1 of math-4 (`01-place-value-operations`):

- standard form, word form, expanded form (01-place-value); standard algorithm, inverse operation (02-rounding-adding); area model, partial product (03-multiplying-one-digit); remainder, partial quotient (05-dividing); multiplicative comparison (06-comparing-problems).

From math-3 (known; do not teach again):

- Multiplication and division: equal groups, multiplication, multiply, equation, factor (of a product), product (of numbers), array, row (of an array), column (of an array), tape diagram, division, divide, dividend, divisor, quotient, related facts, unknown factor, property (of multiplication), commutative property, associative property, parentheses, distributive property, multiple (of a number), multiplication table, round (a number), estimate, regroup, order of operations.
- Fractions: sixth (of a whole), eighth (of a whole), fraction, unit fraction, numerator, denominator, fraction strip, interval (on a number line), equivalent (fractions), half inch, mixed number, quarter inch.
- Measurement and geometry: a.m., p.m., elapsed time, mass, balance (for mass), gram, kilogram, liquid volume, liter, key (of a graph), scale (of a graph), area, unit square, square unit, square centimeter, square meter, square inch, square foot, side length, rectilinear figure, perimeter, polygon, attribute, right angle, quadrilateral, rhombus, category (of shapes).
