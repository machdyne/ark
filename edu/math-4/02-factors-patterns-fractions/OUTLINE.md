# Outline: Factors, patterns and fractions

Part `02-factors-patterns-fractions` of `math-4`, Grade 4 Math: 6 units, 35 lessons. This file has no number, so learn ignores it. Write each lesson with exactly the file name, objective and standards below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears. The course `needs` math-3: every term math-3 and part 1 teach is known (list at the end) and is not taught again; a one-line reminder is fine.

## Standards in this part

CCSS grade 4 (codes as the standard numbers them; the meaning in short):

- `4.OA.B.4` -- find all factor pairs for a whole number from 1 to 100; know that a whole number is a multiple of each of its factors; tell whether a number from 1 to 100 is a multiple of a given one-digit number; tell whether a number from 1 to 100 is prime or composite.
- `4.OA.C.5` -- make a number or shape pattern that follows a given rule, and find features of the pattern that the rule does not state (such as terms that alternate odd and even), explaining informally why they continue.
- `4.NF.A.1` -- explain with fraction models why a/b is equivalent to (n x a)/(n x b), noticing how the number and the size of the parts differ though the fractions are the same size; use this to recognize and make equivalent fractions.
- `4.NF.A.2` -- compare two fractions with different numerators and different denominators, by making common denominators or numerators or by comparing with a benchmark fraction such as 1/2; know that a comparison holds only when both fractions refer to the same whole; record with >, = or < and justify with a fraction model.

Grade 4 fractions use the denominators 2, 3, 4, 5, 6, 8, 10, 12 and 100 (the standard's note). This part uses 2, 3, 4, 5, 6, 8, 10 and 12; hundredths are taught in part 3. Factors, multiples and primes stay within 1 to 100.

## Figures

Your own figure procedures go in `lib/m4p2.scm` only, every name starting with `m4p2-`. Keep that file under 6 KB (aim for 5 KB: the course has 24 KB for all four parts). Do not edit the other parts' lib files. You may copy procedures from math-3's `lib/fr.scm` (`fr-line`, `fr-point`, `fr-mixed`, `fr-cuts`...) or `lib/md.scm` into yours, renamed with your prefix.

Built-in procedures that suit this part (learn_figures.md, "The library"):

- `dot-array`, `grid` -- arrays and rectangles for factor pairs (every rectangle with a given number of squares)
- `frac-bar`, `frac-bar-at` -- fraction bars one above the other for equivalents and for comparing
- `frac-circle` -- a circle cut into equal parts (use it sparingly: bars and number lines compare more truthfully)
- `number-line`, `nl-mark`, `nl-jump` -- multiples as equal jumps, number patterns, fractions and benchmarks 0, 1/2 and 1 on a line, equivalents at the same point
- `label`, `caption`

Procedures you may want to write in `lib/m4p2.scm` (suggestions; name them as you like, with the prefix):

- `m4p2-hundred` -- a hundred chart (1 to 100, 10 by 10) with chosen numbers ringed or crossed out, for multiples and primes; draw it once, not per frame of a slider
- `m4p2-area-frac` -- a rectangle cut into b columns, shaded a, then cut across into n rows, to show a/b = (n x a)/(n x b)
- `m4p2-growing` -- a shape pattern: the first few figures of a pattern of squares or dots that grows by a rule

## Words

- Uses from part 1: standard form, word form, expanded form, standard algorithm, inverse operation, area model, partial product, remainder, partial quotient, multiplicative comparison.
- Uses from math-3 (see the list at the end), in particular factor, product, multiple, divide, quotient, related facts, array, fraction, unit fraction, numerator, denominator, equivalent, fraction strip, interval, mixed number, sixth, eighth, area.
- Everyday words, not keywords: rule (of a pattern), pattern, odd, even, half, third, fourth, whole.
- A term is used only after the lesson that teaches it, also inside this part: write ordinals as digits ("the 5th term", "the 10th row") before 04-equivalent/01 teaches "fifth", "tenth" and "twelfth" as names of parts, and do not say "prime" before 02-multiples-primes/04 or "term" before 03-patterns/01.
- 1 is neither prime nor composite: say so in 02-multiples-primes/04, with the reason (it has only one factor).
- Say "a fraction greater than 1", not "improper fraction" (the course does not use that word).
- A fraction comparison holds only when both fractions are of the same whole (4.NF.A.2): every comparing problem names one whole, or two wholes of the same size.
- Do not add or subtract fractions in this part (part 3 teaches it). Do not write fractions as decimals. Money (in pattern problems): whole dollars, written `\$5` or "5 dollars" in prose (a bare dollar sign starts a formula).
- **Numbers**: commas in prose for 4 or more digits; no commas inside formulas, `(from ...)`, `(true ...)` and `(answer ...)` (learn's formulas read a comma as an error). In a formula, `a/b` is drawn as a fraction: write dividing whole numbers with ÷ in prose.
- Grade 4 words: sentences of 15 words or fewer, one new term a step, "you", present tense, numbers as digits, US spelling and units.

## 01-factors/ -- Factors

Find all the factor pairs of a whole number from 1 to 100. Standards: 4.OA.B.4.

1. `01-factor-pairs.md` -- Find factor pairs of a whole number with arrays, such as 1 x 12, 2 x 6 and 3 x 4 for 12.  
   Standards: "4.OA.B.4". Keywords: "factor pair".
2. `02-factor-rectangles.md` -- Find every rectangle of whole-number side lengths with a given area, and match each one to a factor pair.  
   Standards: "4.OA.B.4". Keywords: (none new).
3. `03-all-factors.md` -- List all the factors of a number from 1 to 100 by testing 1, 2, 3 ... in order and stopping when the pairs meet.  
   Standards: "4.OA.B.4". Keywords: (none new).
4. `04-divisible.md` -- Tell whether a number is divisible by a one-digit number, using the last digit for 2, 5 and 10 and dividing for the others.  
   Standards: "4.OA.B.4". Keywords: "divisible".
5. `05-common-factors.md` -- Find the factors that two numbers from 1 to 100 have in common.  
   Standards: "4.OA.B.4". Keywords: "common factor".

## 02-multiples-primes/ -- Multiples and prime numbers

Find multiples, and tell whether a number from 1 to 100 is prime or composite. Standards: 4.OA.B.4.

1. `01-multiples.md` -- Tell whether a number from 1 to 100 is a multiple of a given one-digit number.  
   Standards: "4.OA.B.4". Keywords: (none new).
2. `02-factors-and-multiples.md` -- Explain that a whole number is a multiple of each of its factors: 24 is a multiple of 1, 2, 3, 4, 6, 8, 12 and 24.  
   Standards: "4.OA.B.4". Keywords: (none new).
3. `03-common-multiples.md` -- Find multiples that two one-digit numbers have in common, such as 12 and 24 for 4 and 6.  
   Standards: "4.OA.B.4". Keywords: "common multiple".
4. `04-prime-and-composite.md` -- Tell whether a number from 1 to 100 is prime or composite by its factor pairs, and say why 1 is neither.  
   Standards: "4.OA.B.4". Keywords: "prime number", "composite number".
5. `05-primes-to-100.md` -- Find all the prime numbers up to 100 by crossing out the multiples of 2, 3, 5 and 7 on a hundred chart.  
   Standards: "4.OA.B.4". Keywords: (none new).
6. `06-factor-problems.md` -- Solve word problems with factors, multiples and primes, such as setting 36 chairs in equal rows.  
   Standards: "4.OA.B.4". Keywords: (none new).

## 03-patterns/ -- Number and shape patterns

Make number and shape patterns from a rule and explain features the rule does not state. Standards: 4.OA.C.5.

1. `01-number-patterns.md` -- Make the first terms of a number pattern from a rule, such as "start at 3, add 4".  
   Standards: "4.OA.C.5". Keywords: "term (of a pattern)".
2. `02-features.md` -- Find features of a pattern that its rule does not state, such as terms that alternate odd and even.  
   Standards: "4.OA.C.5". Keywords: (none new).
3. `03-explaining-features.md` -- Explain why a feature keeps going, such as why "start at 1, add 3" always alternates odd and even.  
   Standards: "4.OA.C.5". Keywords: (none new).
4. `04-multiplying-patterns.md` -- Make a pattern whose rule multiplies, such as "start at 1, multiply by 3", and describe how its terms grow.  
   Standards: "4.OA.C.5". Keywords: (none new).
5. `05-shape-patterns.md` -- Make a shape pattern that follows a rule, and find how many squares or dots a later figure has.  
   Standards: "4.OA.C.5". Keywords: (none new).
6. `06-pattern-problems.md` -- Solve word problems with patterns, such as money saved by the same amount each week.  
   Standards: "4.OA.C.5". Keywords: (none new).

## 04-equivalent/ -- Equivalent fractions

Explain why multiplying the numerator and denominator by the same number gives an equivalent fraction, and use it. Standards: 4.NF.A.1.

1. `01-fifths-tenths-twelfths.md` -- Name and show fractions with the denominators 5, 10 and 12 with bars and number lines.  
   Standards: "4.NF.A.1". Keywords: "fifth (of a whole)", "tenth (of a whole)", "twelfth (of a whole)".
2. `02-equivalent-models.md` -- Show with fraction bars and area models that two fractions are equivalent although the number and the size of the parts differ.  
   Standards: "4.NF.A.1". Keywords: (none new).
3. `03-why-multiplying-works.md` -- Explain why a/b = (n x a)/(n x b) by cutting every part of a model into n equal parts.  
   Standards: "4.NF.A.1". Keywords: (none new).
4. `04-multiplying-to-find.md` -- Make an equivalent fraction by multiplying the numerator and the denominator by the same number.  
   Standards: "4.NF.A.1". Keywords: (none new).
5. `05-dividing-to-find.md` -- Make an equivalent fraction with smaller numbers by dividing the numerator and the denominator by a common factor, and tell when a fraction is in simplest form.  
   Standards: "4.NF.A.1". Keywords: "simplest form".
6. `06-on-the-number-line.md` -- Show equivalent fractions as the same point on number lines cut into different numbers of parts, including fractions greater than 1.  
   Standards: "4.NF.A.1". Keywords: (none new).
7. `07-equivalent-problems.md` -- Solve word problems in which equal amounts of one whole are written as different fractions.  
   Standards: "4.NF.A.1". Keywords: (none new).

## 05-benchmarks/ -- Comparing with benchmarks

Compare fractions by comparing each one with 0, 1/2 or 1. Standards: 4.NF.A.2.

1. `01-benchmark-half.md` -- Tell whether a fraction is less than, equal to or greater than 1/2 by comparing its numerator with half its denominator.  
   Standards: "4.NF.A.2". Keywords: "benchmark fraction".
2. `02-closest-benchmark.md` -- Tell whether a fraction is closest to 0, 1/2 or 1 on a number line.  
   Standards: "4.NF.A.2". Keywords: (none new).
3. `03-comparing-with-half.md` -- Compare two fractions when one is less than 1/2 and the other is greater, such as 3/8 and 4/6.  
   Standards: "4.NF.A.2". Keywords: (none new).
4. `04-comparing-with-one.md` -- Compare two fractions just less than 1 by the size of the part each is missing, such as 5/6 and 7/8.  
   Standards: "4.NF.A.2". Keywords: (none new).
5. `05-greater-than-one.md` -- Compare fractions greater than 1 by writing them as mixed numbers and comparing the wholes, then the parts.  
   Standards: "4.NF.A.2". Keywords: (none new).

## 06-comparing/ -- Comparing fractions

Compare two fractions with different numerators and denominators, and justify the comparison with a model. Standards: 4.NF.A.2.

1. `01-common-denominator.md` -- Compare two fractions by writing them as equivalent fractions with a common denominator, using a common multiple of the denominators.  
   Standards: "4.NF.A.2". Keywords: "common denominator".
2. `02-common-numerator.md` -- Compare two fractions by writing them as equivalent fractions with a common numerator.  
   Standards: "4.NF.A.2". Keywords: "common numerator".
3. `03-choosing-a-way.md` -- Choose a way to compare two fractions (a benchmark, a common denominator or a common numerator) and record the result with >, = or <.  
   Standards: "4.NF.A.2". Keywords: (none new).
4. `04-ordering-fractions.md` -- Put three or four fractions with different denominators in order from least to greatest.  
   Standards: "4.NF.A.2". Keywords: (none new).
5. `05-same-whole.md` -- Explain with fraction models why a comparison holds only when both fractions refer to the same whole.  
   Standards: "4.NF.A.2". Keywords: (none new).
6. `06-comparing-problems.md` -- Solve word problems that compare fractions with different numerators and denominators, and justify each answer with a model.  
   Standards: "4.NF.A.2". Keywords: (none new).

## Terms taught later (do not use them in this part)

- Part 3: decompose, like denominators, hundredth (of a whole), decimal, decimal point.
- Part 4: kilometer, yard (unit of length), milliliter, weight, pound (unit of weight), ounce, formula, eighth inch, line segment, endpoint, ray (in geometry), angle (except "right angle", known), vertex (of an angle), acute angle, obtuse angle, perpendicular, parallel, degree (of an angle), straight angle, protractor, right triangle, acute triangle, obtuse triangle, parallelogram, line of symmetry.

Avoid also the name "Ray" for a person in a problem, "yard" in any sense (say "garden"), and "improper fraction", "trapezoid", "long division" anywhere in the course.

## Terms taught before this part

From part 1 of math-4 (`01-place-value-operations`):

- standard form, word form, expanded form (01-place-value); standard algorithm, inverse operation (02-rounding-adding); area model, partial product (03-multiplying-one-digit); remainder, partial quotient (05-dividing); multiplicative comparison (06-comparing-problems).

From math-3 (known; do not teach again):

- Multiplication and division: equal groups, multiplication, multiply, equation, factor (of a product), product (of numbers), array, row (of an array), column (of an array), tape diagram, division, divide, dividend, divisor, quotient, related facts, unknown factor, property (of multiplication), commutative property, associative property, parentheses, distributive property, multiple (of a number), multiplication table, round (a number), estimate, regroup, order of operations.
- Fractions: sixth (of a whole), eighth (of a whole), fraction, unit fraction, numerator, denominator, fraction strip, interval (on a number line), equivalent (fractions), half inch, mixed number, quarter inch.
- Measurement and geometry: a.m., p.m., elapsed time, mass, balance (for mass), gram, kilogram, liquid volume, liter, key (of a graph), scale (of a graph), area, unit square, square unit, square centimeter, square meter, square inch, square foot, side length, rectilinear figure, perimeter, polygon, attribute, right angle, quadrilateral, rhombus, category (of shapes).
