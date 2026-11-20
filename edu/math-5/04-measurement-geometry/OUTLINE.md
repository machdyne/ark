# Outline: Measurement, volume and the plane

Part `04-measurement-geometry` of `math-5`, Grade 5 Math: 7 units, 35 lessons. This file has no number, so learn ignores it. Write each lesson with exactly the file name, objective and standards below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears. The course `needs` math-4, which needs math-3: every term they teach and every term parts 1-3 teach is known (list at the end) and is not taught again; a one-line reminder is fine.

The four parts of math-5 are written at the same time by four authors. Parts 1-3 are being written tonight too: rely only on the terms listed at the end and the skills named under "Skills this part uses from parts 1-3", which their outlines promise. This is the last part: no later part of math-5 depends on it.

## Standards in this part

CCSS grade 5 (codes as the standard numbers them; the meaning in short):

- `5.MD.A.1` -- convert among different-sized standard units within one measurement system (such as 5 cm to 0.05 m), and use these conversions in multi-step real-world problems.
- `5.MD.B.2` -- make a line plot of measurements in fractions of a unit (1/2, 1/4, 1/8), and use grade 5 operations on fractions to solve problems from it, such as finding how much liquid each of several identical beakers would hold if the total were shared out equally.
- `5.MD.C.3` -- recognize volume as an attribute of solid figures and understand how volume is measured.
- `5.MD.C.3a` -- a cube with side length 1 unit, a "unit cube", has "one cubic unit" of volume and can be used to measure volume.
- `5.MD.C.3b` -- a solid figure that can be packed without gaps or overlaps by n unit cubes has a volume of n cubic units.
- `5.MD.C.4` -- measure volumes by counting unit cubes, using cubic cm, cubic in, cubic ft and improvised units.
- `5.MD.C.5a` -- find the volume of a right rectangular prism with whole-number side lengths by packing it with unit cubes, and show it equals the product of the edge lengths, or the height times the area of the base; show three-factor products as volumes, for example to show the associative property.
- `5.MD.C.5b` -- apply V = l x w x h and V = b x h to find volumes of right rectangular prisms with whole-number edge lengths in real-world and mathematical problems.
- `5.MD.C.5c` -- volume is additive: find the volume of a solid made of two non-overlapping right rectangular prisms by adding their volumes.
- `5.OA.B.3` -- make two number patterns from two given rules, find relationships between corresponding terms, form ordered pairs from corresponding terms, and graph them on a coordinate plane.
- `5.G.A.1` -- a pair of perpendicular number lines, the axes, defines a coordinate system, with their crossing (the origin) at 0 on each line; a point is located by an ordered pair of numbers, its coordinates: the first says how far to go from the origin along the x-axis, the second how far along the y-axis.
- `5.G.A.2` -- represent real-world and mathematical problems by graphing points in the first quadrant, and interpret the coordinates of points in the situation.
- `5.G.B.3` -- attributes of a category of two-dimensional figures belong to all its subcategories: all rectangles have four right angles and squares are rectangles, so all squares have four right angles.
- `5.G.B.4` -- classify two-dimensional figures in a hierarchy based on their properties.

Scope: volume only of rectangular prisms with whole-number edge lengths and of solids made of two of them. The coordinate plane only in the first quadrant (both coordinates 0 or more); coordinates are whole numbers, except that a real-world graph may use halves. Converting within one system only (metric with metric, US with US): never between metric and US units.

## Figures

Your own figure procedures go in `lib/m5p4.scm` only, every name starting with `m5p4-`. Keep that file under 6 KB (aim for 5 KB: the course has 24 KB for all four parts). Do not edit the other parts' lib files. You may copy procedures from math-4's `lib/m4p4.scm` (`m4p4-right`, `m4p4-ruler8`, `m4p4-plot`, `m4p4-shape`, `m4p4-table`, `m4p4-lab`...) into yours, renamed with your prefix.

Built-in procedures that suit this part (learn_figures.md, "The library"):

- `number-line`, `nl-mark`, `nl-jump` -- a line plot's number line in halves, quarters and eighths; measurement scales for converting (a meter cut into centimeters and millimeters)
- `ruler` -- whole and half units (no quarter or eighth marks: draw those with your own procedure)
- `graph`, `gx`, `gy`, `graph-axes`, `plot-point` -- the coordinate plane in the first quadrant (`graph` with xmin and ymin 0; `graph-axes` with steps of 1, 2, 5 or 10 and the axis names), points with labels
- `grid` -- the grid lines of a coordinate plane, layers of unit cubes seen from above
- `poly`, `line`, `frame`, `arrow`, `dot` -- prisms drawn as boxes, triangles and quadrilaterals to classify, a hierarchy diagram
- `angle-mark` -- angles in triangles
- `label`, `caption`

Procedures you may want to write in `lib/m5p4.scm` (suggestions; name them as you like, with the prefix):

- `m5p4-box` -- a rectangular prism of l x w x h unit cubes in an oblique drawing: the front, top and right faces with their cube lines (draw only the three visible faces, not every cube, so a frame stays cheap); an option for a solid of two boxes
- `m5p4-plot` -- a line plot: a number line in eighths with stacked X marks
- `m5p4-ticks` -- tick marks on sides of equal length, and the small square of a right angle
- `m5p4-tree` -- a hierarchy diagram: named boxes joined by lines, the more general shape above
- `m5p4-table` -- a two-column table, for conversions and for two patterns side by side

Every figure is to scale where it shows a measure: a 3 by 4 by 2 box is drawn 3 by 4 by 2; a point (3, 5) is 3 grid lines right and 5 up; sides marked equal are equal. An oblique drawing of a box shows the receding edges shorter and slanted: say once that it is a drawing of a box, not a flat shape.

## Words

- Uses from parts 1-3 (list at the end), in particular power of ten, exponent, thousandth, expression, evaluate, unlike denominators, scaling.
- Uses from math-4 and math-3 (list at the end), in particular kilometer, milliliter, yard, weight, pound, ounce, formula, eighth inch, line segment, endpoint, angle, vertex, acute angle, obtuse angle, perpendicular, parallel, right triangle, acute triangle, obtuse triangle, parallelogram, term (of a pattern), area, unit square, square unit, side length, polygon, attribute, right angle, quadrilateral, rhombus, category, liquid volume, liter, gram, kilogram, mass, multiple, associative property, decimal, mixed number.
- Words the learner knows from grades 1-4 (not keywords): inch, foot, centimeter, meter, hour, minute, second, day, week, dollar, cent, cube, point, line, line plot, number line, pattern, rule, length, width, rectangle, square, triangle, side, corner, layer, table.
- **Mile, cup and height are everyday words** that earlier courses used ("a mile", "3 cups"). Define each in bold where this part gives it its exact meaning -- a **mile** (5,280 feet) in 01-converting/03, a **cup** (8 fluid ounces) in 01-converting/05, the **height** of a prism in 04-volume-formulas/02 -- but **do not list them as keywords**: terms.py would then flag every earlier use.
- A term is used only after the lesson that teaches it, also inside this part: do not say "volume" alone before 03-volume/01 (in 01-converting say "liquid volume"), "cubic" before 03-volume/02, "face", "edge" or "base" before the lessons that teach them, "axis", "axes" or "origin" before 05-coordinate-plane/01, "ordered pair" before 05-coordinate-plane/02, "coordinate" alone or "coordinates" before 05-coordinate-plane/03 ("coordinate plane" is fine from 05-coordinate-plane/01), "quadrant" before 05-coordinate-plane/04, "corresponding terms" before 06-patterns-graphs/01.
- **Units**: pounds, ounces and tons measure weight; fluid ounces measure liquid volume -- say so, and never call a fluid ounce an ounce. Grams and kilograms measure mass (math-3): do not call them units of weight. The ton here is the US ton of 2,000 pounds; say once that other countries use a metric ton of 1,000 kilograms (also written "tonne"). Cups, pints, quarts and gallons are US units: say once that the UK pint and gallon are larger. Do not say "capacity" (not taught): say "liquid volume".
- Unit facts (NIST Handbook 44, Appendix C, "General Tables of Units of Measurement", is a source for all of them): 1 kilometer = 1,000 meters; 1 meter = 100 centimeters = 1,000 millimeters; 1 centimeter = 10 millimeters; 1 kilogram = 1,000 grams; 1 liter = 1,000 milliliters; 1 foot = 12 inches; 1 yard = 3 feet = 36 inches; 1 mile = 5,280 feet = 1,760 yards; 1 pound = 16 ounces; 1 ton = 2,000 pounds; 1 cup = 8 fluid ounces; 1 pint = 2 cups; 1 quart = 2 pints; 1 gallon = 4 quarts; 1 hour = 60 minutes; 1 minute = 60 seconds; 1 day = 24 hours. A milliliter is the same as a cubic centimeter (may be remarked in 03-volume/04). Do not use months or years in converting (their lengths vary).
- Abbreviations, where a table or a figure needs them: km, m, cm, mm, kg, g, L, mL, in, ft, yd, mi, lb, oz, fl oz, c, pt, qt, gal. Write L and mL with capital L. In prose write unit names in full, and "cubic centimeters", not cm with a raised 3. Units go in prose and in `(unit "...")`, never inside formulas (`$5 cm$` would be read as letters multiplied).
- **Volume formulas**: write them `$V = l * w * h$` and `$V = b * h$` as CCSS does, with b the area of the base (some books write B: say so once). Any face of a rectangular prism can be its base; the height is then the edge that meets the base at a right angle. Do not say "cubed" or "squared".
- A **rectangular prism** here is a solid figure with 6 faces that are all rectangles (a box shape); a cube is a rectangular prism whose edges are all the same length. Corners of a solid are "corners" (do not teach "vertex" of a solid).
- **Ordered pairs**: write them in prose, "(3, 5)", never inside `$...$` (a comma inside a formula is an error). Ask for a point's coordinates with two `number` checks (the x-coordinate, then the y-coordinate) or as a choice; if a `text` check, accept "(3, 5)", "(3,5)" and "3, 5". The first number is always along the x-axis (across), the second along the y-axis (up).
- **Triangles by sides**: an **equilateral triangle** has 3 sides of the same length; an **isosceles triangle** has at least 2 sides of the same length; a **scalene triangle** has no 2 sides of the same length. With "at least 2", every equilateral triangle is also isosceles: say that this course uses "at least 2", as CCSS-aligned books commonly do, and that some books say "exactly 2"; ask no question whose answer depends on that choice except in 07-classifying-shapes/05, which states the definition first. An equilateral triangle cannot be right or obtuse (its angles are all 60 degrees); every other pairing of a side class with an angle class (right isosceles, obtuse scalene...) can be drawn.
- **Quadrilaterals**, with the definitions math-3 and math-4 taught: a parallelogram has 2 pairs of parallel sides; a rectangle has 4 right angles; a rhombus has 4 sides of the same length; a square has 4 right angles and 4 sides of the same length. So squares are rectangles and rhombuses; rectangles and rhombuses are parallelograms; all of these are quadrilaterals, and quadrilaterals are polygons. Do not use "trapezoid", "trapezium" or "kite" as shape names (their definitions differ between books and countries).
- Degrees: "60°" or "60 degrees" in prose; the number alone inside formulas, `(from ...)` and `(true ...)`.
- **Money**: `\$3.45` or "3.45 dollars" in prose (a bare dollar sign starts a formula).
- **Typed answers**: decimals as `text` checks accepting "0.05" and ".05" (and "0.050" where trailing zeros are not wrong), one string per `(accept ...)`, at most 8; fractions and mixed numbers as in part 3 (a `number` check reads 2 1/2, 5/2 and 2.5 alike). Volume answers with `(unit "cubic cm")`, `(unit "cubic in")`, `(unit "cubic ft")` or `(unit "cubic units")`.
- **Numbers**: commas in prose for 4 or more digits (5,280); no commas inside formulas, `(from ...)`, `(true ...)` and `(answer ...)`. Write a fraction times a number with brackets: `$12 * (3/4)$`.
- Grade 5 words: sentences of 15 words or fewer, one new term a step, "you", present tense, numbers as digits, US spelling and units (meter, liter, millimeter).

## 01-converting/ -- Converting units

Convert measurements between larger and smaller units in one system, and use conversions in multi-step problems. Standards: 5.MD.A.1.

1. `01-metric-length.md` -- Convert among kilometers, meters, centimeters and millimeters both ways by multiplying or dividing by a power of ten, such as 5 centimeters = 0.05 meter.  
   Standards: "5.MD.A.1". Keywords: "millimeter".
2. `02-metric-mass-liquid.md` -- Convert between grams and kilograms and between milliliters and liters both ways, such as 350 grams = 0.35 kilogram.  
   Standards: "5.MD.A.1". Keywords: (none new).
3. `03-customary-length.md` -- Convert among inches, feet, yards and miles both ways, such as 30 inches = 2 1/2 feet and 1 mile = 5,280 feet.  
   Standards: "5.MD.A.1". Keywords: (none new).
4. `04-weight.md` -- Convert among ounces, pounds and tons both ways, such as 1 ton = 2,000 pounds and 24 ounces = 1 1/2 pounds.  
   Standards: "5.MD.A.1". Keywords: "ton".
5. `05-liquid-measures.md` -- Convert among fluid ounces, cups, pints, quarts and gallons, such as 1 gallon = 4 quarts = 8 pints = 16 cups.  
   Standards: "5.MD.A.1". Keywords: "fluid ounce", "pint", "quart", "gallon".
6. `06-multi-step.md` -- Solve multi-step real-world problems that convert units within one system, such as how many 25-centimeter pieces a 3-meter ribbon makes.  
   Standards: "5.MD.A.1". Keywords: (none new).

## 02-line-plots/ -- Line plots with fractions

Make line plots of measurements in halves, quarters and eighths, and solve problems from them with fraction operations. Standards: 5.MD.B.2.

1. `01-making-line-plots.md` -- Make a line plot of a set of measurements in halves, quarters and eighths of a unit, writing every mark in eighths.  
   Standards: "5.MD.B.2". Keywords: (none new).
2. `02-totals-and-differences.md` -- Find a total and the difference between the greatest and least measurements on a line plot, adding and subtracting fractions with unlike denominators.  
   Standards: "5.MD.B.2". Keywords: (none new).
3. `03-equal-shares.md` -- Find how much each container would hold if the total on a line plot were shared out equally, such as the water in 8 beakers.  
   Standards: "5.MD.B.2". Keywords: (none new).
4. `04-line-plot-problems.md` -- Solve multi-step problems from a line plot that multiply a fraction by a whole number, add and compare.  
   Standards: "5.MD.B.2". Keywords: (none new).

## 03-volume/ -- What volume is

Understand volume as the space a solid figure takes up, and measure it by counting unit cubes. Standards: 5.MD.C.3, 5.MD.C.3a, 5.MD.C.3b, 5.MD.C.4, 5.MD.C.5a.

1. `01-what-volume-is.md` -- Explain volume as the amount of space a solid figure takes up, and compare two solids by how many same-size cubes build them.  
   Standards: "5.MD.C.3". Keywords: "volume", "solid figure".
2. `02-unit-cubes.md` -- Explain that a unit cube has edges 1 unit long and a volume of 1 cubic unit, and use unit cubes to measure volume.  
   Standards: "5.MD.C.3a". Keywords: "unit cube", "cubic unit".
3. `03-counting-cubes.md` -- Find the volume of a solid figure packed with unit cubes without gaps or overlaps by counting them, including cubes hidden from view.  
   Standards: "5.MD.C.3b", "5.MD.C.4". Keywords: (none new).
4. `04-cubic-units.md` -- Measure volume in cubic centimeters, cubic inches and cubic feet, and in other units made of cubes, such as sugar cubes.  
   Standards: "5.MD.C.4". Keywords: "cubic centimeter", "cubic inch", "cubic foot".
5. `05-rectangular-prisms.md` -- Name a rectangular prism and its faces and edges, and find its volume by counting the unit cubes layer by layer.  
   Standards: "5.MD.C.4", "5.MD.C.5a". Keywords: "rectangular prism", "face (of a solid)", "edge (of a solid)".

## 04-volume-formulas/ -- Volume formulas

Find the volume of rectangular prisms with V = l x w x h and V = b x h, and of solids made of two prisms. Standards: 5.MD.C.5a, 5.MD.C.5b, 5.MD.C.5c.

1. `01-layers.md` -- Find the volume of a rectangular prism as the number of layers times the cubes in each layer, and see that it equals length x width x height.  
   Standards: "5.MD.C.5a". Keywords: (none new).
2. `02-length-width-height.md` -- Use the formula V = l x w x h to find the volume of a rectangular prism with whole-number edge lengths.  
   Standards: "5.MD.C.5b". Keywords: (none new).
3. `03-base-times-height.md` -- Use the formula V = b x h, where b is the area of the base, and explain why it gives the same volume as V = l x w x h.  
   Standards: "5.MD.C.5a", "5.MD.C.5b". Keywords: "base (of a prism)".
4. `04-three-factors.md` -- Show with one prism that (3 x 4) x 5 = 3 x (4 x 5), the associative property, and find a missing edge length from a volume and two edges.  
   Standards: "5.MD.C.5a", "5.MD.C.5b". Keywords: (none new).
5. `05-adding-volumes.md` -- Find the volume of a solid made of two rectangular prisms that do not overlap by adding their volumes.  
   Standards: "5.MD.C.5c". Keywords: (none new).
6. `06-volume-problems.md` -- Solve real-world problems about the volume of boxes, tanks and solids made of two prisms.  
   Standards: "5.MD.C.5b", "5.MD.C.5c". Keywords: (none new).

## 05-coordinate-plane/ -- The coordinate plane

Locate and graph points in the first quadrant with ordered pairs, and read what the coordinates mean. Standards: 5.G.A.1, 5.G.A.2.

1. `01-axes-and-origin.md` -- Describe the coordinate plane as two perpendicular number lines, the axes, that cross at their 0s, the origin.  
   Standards: "5.G.A.1". Keywords: "coordinate plane", "axis (of a graph)", "origin (of a graph)".
2. `02-ordered-pairs.md` -- Plot a point from an ordered pair such as (3, 5): from the origin, 3 along the x-axis, then 5 in the direction of the y-axis.  
   Standards: "5.G.A.1". Keywords: "ordered pair", "x-axis", "y-axis".
3. `03-coordinates.md` -- Read the coordinates of a point, name its x-coordinate and y-coordinate, and tell (2, 5) from (5, 2).  
   Standards: "5.G.A.1". Keywords: "coordinate (of a point)", "x-coordinate", "y-coordinate".
4. `04-graphing-problems.md` -- Graph points for a real-world problem in the first quadrant, such as places on a map or hours and distances from a table, and say what each coordinate means.  
   Standards: "5.G.A.2". Keywords: "quadrant".

## 06-patterns-graphs/ -- Two patterns on a graph

Make two number patterns from two rules, relate their corresponding terms, and graph them as ordered pairs. Standards: 5.OA.B.3, 5.G.A.2.

1. `01-two-patterns.md` -- Make two number patterns from two rules with the same start, such as "start at 0, add 3" and "start at 0, add 6", and line up their terms in a table.  
   Standards: "5.OA.B.3". Keywords: "corresponding terms".
2. `02-relationships.md` -- Find a relationship between corresponding terms, such as each term of the second pattern is 2 times the term of the first, and explain why it keeps going.  
   Standards: "5.OA.B.3". Keywords: (none new).
3. `03-pairs-to-points.md` -- Form ordered pairs from corresponding terms, such as (3, 6), and graph them on the coordinate plane.  
   Standards: "5.OA.B.3". Keywords: (none new).
4. `04-pattern-problems.md` -- Solve real-world problems with two patterns, such as two people saving different amounts each week, with a table and a graph.  
   Standards: "5.OA.B.3", "5.G.A.2". Keywords: (none new).

## 07-classifying-shapes/ -- Classifying two-dimensional figures

Classify triangles and quadrilaterals by their properties, and place them in a hierarchy. Standards: 5.G.B.3, 5.G.B.4.

1. `01-triangles-by-sides.md` -- Classify triangles by their sides as equilateral, isosceles or scalene.  
   Standards: "5.G.B.4". Keywords: "equilateral triangle", "isosceles triangle", "scalene triangle".
2. `02-triangles-both-ways.md` -- Classify a triangle by its sides and by its angles together, such as a right isosceles triangle, and explain why an equilateral triangle cannot be right.  
   Standards: "5.G.B.4". Keywords: (none new).
3. `03-quadrilateral-properties.md` -- List the properties of parallelograms, rectangles, rhombuses and squares: parallel sides, sides of the same length and right angles.  
   Standards: "5.G.B.3". Keywords: (none new).
4. `04-subcategories.md` -- Explain that every property of a category belongs to each of its subcategories: rectangles have 4 right angles, squares are rectangles, so squares have 4 right angles.  
   Standards: "5.G.B.3". Keywords: "subcategory".
5. `05-hierarchy.md` -- Arrange polygons, quadrilaterals, parallelograms, rectangles, rhombuses and squares in a hierarchy, and place a given shape in it; do the same for triangles.  
   Standards: "5.G.B.4". Keywords: "hierarchy".
6. `06-always-sometimes-never.md` -- Decide whether statements such as "a rhombus is a square" are always, sometimes or never true, and give a shape that shows it.  
   Standards: "5.G.B.3", "5.G.B.4". Keywords: (none new).

## Skills this part uses from parts 1-3

Parts 1-3 teach these; use them with a one-line reminder, never teach them again:

- From part 1 (`01-place-value-decimals`): multiplying and dividing whole numbers and decimals by 10, 100 and 1,000 (01-powers-of-ten, 02-thousandths/06-07) and decimals to thousandths (02-thousandths), in 01-converting/01-02 (1 millimeter = 0.001 meter); multiplying multi-digit whole numbers (04-multiplying) for volumes and conversions such as 7 x 5,280.
- From part 2 (`02-decimal-operations-expressions`): adding, subtracting, multiplying and dividing decimals to hundredths (01-adding-subtracting, 02-multiplying-decimals, 03-dividing-decimals), in 01-converting/06 and in measurement problems with decimals; expressions with parentheses (04-expressions) for solids made of two prisms, such as (4 x 3 x 2) + (2 x 3 x 2).
- From part 3 (`03-fractions`): adding and subtracting fractions and mixed numbers with unlike denominators (01-unlike-denominators, 02-mixed-numbers) in 02-line-plots; fractions as division (03-fractions-as-division) in 02-line-plots/03 and in conversions such as 30 inches = 30/12 feet = 2 1/2 feet; a fraction times a whole number (04-multiplying-fractions/01-02) in conversions such as 3/4 foot = 9 inches and in 02-line-plots/04.

## Terms taught later

None: this is the last part of math-5. Grade 6 (math-6) teaches later words; do not use these here: "negative number", "four quadrants" (say only "the first quadrant"), "surface area", "least common multiple", "greatest common factor", "reciprocal", "ratio", "rate", "percent", "variable" (say "letter" for the l, w and h of a formula). Avoid also "improper fraction", "trapezoid", "trapezium", "kite" (as a shape name), "long division" and "capacity" anywhere in the course.

## Terms taught before this part

From part 3 of math-5 (`03-fractions`):

- unlike denominators (01-unlike-denominators); scaling (05-scaling).

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
