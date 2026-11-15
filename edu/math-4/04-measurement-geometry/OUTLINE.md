# Outline: Measurement and geometry

Part `04-measurement-geometry` of `math-4`, Grade 4 Math: 7 units, 35 lessons. This file has no number, so learn ignores it. Write each lesson with exactly the file name, objective and standards below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears. The course `needs` math-3: every term math-3 and parts 1-3 teach is known (list at the end) and is not taught again; a one-line reminder is fine.

## Standards in this part

CCSS grade 4 (codes as the standard numbers them; the meaning in short):

- `4.MD.A.1` -- know the relative sizes of units within one system: km, m, cm; kg, g; lb, oz; l, ml; hr, min, sec. Within one system, express a measurement in a larger unit in terms of a smaller unit (a 4 ft snake is 48 in long), and record equivalent measurements in a two-column table.
- `4.MD.A.2` -- use the four operations to solve word problems about distances, intervals of time, liquid volumes, masses and money, including simple fractions or decimals and problems that express a larger unit in terms of a smaller one; show the quantities on diagrams such as number lines with a measurement scale.
- `4.MD.A.3` -- use the area and perimeter formulas for rectangles in real-world and mathematical problems, including finding an unknown side.
- `4.MD.B.4` -- make a line plot of measurements in fractions of a unit (1/2, 1/4, 1/8), and solve adding and subtracting problems with fractions from the line plot.
- `4.MD.C.5a` -- an angle is measured against a circle centered at the rays' common endpoint, by the fraction of the circle between the rays; an angle that turns through 1/360 of a circle is a one-degree angle.
- `4.MD.C.5b` -- an angle that turns through n one-degree angles has a measure of n degrees.
- `4.MD.C.6` -- measure angles in whole degrees with a protractor, and sketch angles of a given measure.
- `4.MD.C.7` -- angle measure is additive: the measure of an angle split into parts is the sum of the parts; solve adding and subtracting problems to find unknown angles on a diagram, with an equation and a symbol for the unknown angle.
- `4.G.A.1` -- draw points, lines, line segments, rays, angles (right, acute, obtuse), and perpendicular and parallel lines, and find them in two-dimensional figures.
- `4.G.A.2` -- classify two-dimensional figures by whether they have parallel or perpendicular lines and angles of a given size; recognize right triangles as a category and identify them.
- `4.G.A.3` -- a line of symmetry is a line across a figure along which it folds into matching parts; identify line-symmetric figures and draw their lines of symmetry.

Converting in this part goes only within one system and from a larger unit to a smaller one (the standard's scope): no converting between metric and US units.

## Figures

Your own figure procedures go in `lib/m4p4.scm` only, every name starting with `m4p4-`. Keep that file under 6 KB (aim for 5 KB: the course has 24 KB for all four parts). Do not edit the other parts' lib files. You may copy procedures from math-3's `lib/ms.scm` (`ms-rect`, `ms-poly`, `ms-corner`, `ms-sym`, `ms-tline`, `ms-jug`, `ms-pan`...) and `lib/fr.scm` (`fr-ruler`, `fr-plot`) into yours, renamed with your prefix.

Built-in procedures that suit this part (learn_figures.md, "The library"):

- `number-line`, `nl-mark`, `nl-jump` -- measurement scales, time intervals across hours, distances, money; a line plot's number line in halves, quarters and eighths
- `ruler` -- a ruler in whole and half units (it has no quarter or eighth marks: draw those with your own procedure)
- `clock-face`, `clock-dial`, `clock-hands` -- times for intervals (a moving clock keeps true time)
- `angle-mark`, `arc`, `wedge`, `arc-points` -- angles and their arcs (degrees, 0 to the right, counter-clockwise, as on a protractor)
- `arrow`, `line`, `dot` -- rays (one arrowhead), lines (two arrowheads, drawn as two arrows from the middle), segments with dots at the endpoints
- `grid`, `poly`, `frame` -- rectangles for area and perimeter, polygons to classify, figures to fold
- `label`, `caption`

Procedures you may want to write in `lib/m4p4.scm` (suggestions; name them as you like, with the prefix):

- `m4p4-protractor` -- a half-circle protractor with ticks every 10 degrees (and short ticks every 5), numbers on both scales, its center mark on the vertex; draw it in `still` if the angle moves, so a slider stays cheap
- `m4p4-ruler8` -- a ruler with half, quarter and eighth-inch marks of falling lengths
- `m4p4-plot` -- a line plot: a number line in eighths with stacked X marks
- `m4p4-right` -- the small square that marks a right angle
- `m4p4-angle` -- two rays from a vertex at given directions, with the arc and its measure

Every figure is to scale where it shows a measure: an angle labelled 40 degrees is drawn at 40 degrees, and a ruler's marks are equally spaced.

## Words

- Uses from parts 1-3 and math-3: see the list at the end; in particular area, perimeter, side length, right angle, polygon, quadrilateral, rhombus, attribute, category, mass, gram, kilogram, liter, liquid volume, elapsed time, a.m., p.m., multiplicative comparison, mixed number, like denominators, decimal, hundredth, equivalent.
- Words the learner knows from grades 1-3 (not keywords): inch, foot, centimeter, meter, hour, minute, dollar, cent, triangle, rectangle, square, side, corner, line plot, number line, length, width.
- **Point, line and second are everyday words**, used in every part before this one ("a point on the number line", "the second factor"). Define them in bold where this part first gives them their exact meaning -- a **point** (an exact place, drawn as a dot) and a **line** (straight, going on without end both ways) in 05-lines-angles/01, a **second** (1/60 of a minute) in 01-converting/05 -- but **do not list them as keywords**: terms.py would then flag every earlier "number line" and "second step". Keywords that contain them ("line segment", "line of symmetry") are fine.
- Mass and weight: grams and kilograms measure mass (math-3); **pounds and ounces measure weight**, how heavy something is. Do not call kilograms a unit of weight. Ounces here are ounces of weight, not fluid ounces.
- Abbreviations, where a table or a figure needs them: km, m, cm, kg, g, lb, oz, L, mL, hr, min, sec. Write L and mL with capital L (a small l looks like the digit 1 in learn's fonts). In prose, write unit names in full. Units go in prose and in `(unit "...")`, never inside formulas (`$1 ft$` would be read as letters multiplied).
- Degrees: write "90°" or "90 degrees" in prose; the ° sign works in prose but not inside formulas, `(from ...)` or `(true ...)`, where you write the number alone. Give angle answers with `(unit "degrees")`.
- Money: written `\$3.45` in prose (a bare dollar sign starts a formula). Adding and subtracting decimals is grade 5: solve money problems by working in cents (3.45 dollars = 345 cents) and writing the answer back in dollars and cents.
- Triangles are classified here by their angles only (right, acute, obtuse). Do not use "isosceles", "equilateral", "scalene", "trapezoid" or "trapezium" (the last two mean different shapes in different countries).
- A term is used only after the lesson that teaches it, also inside this part: do not say "angle" (except "right angle") before 05-lines-angles/02, "degree" before 06-measuring-angles/01, "parallel" or "perpendicular" before 05-lines-angles/04, or "formula" before 03-area-perimeter/01. Do not say "yard" in any sense (not even a garden) before 01-converting/02, "weight" before 01-converting/04, and do not name a person "Ray".
- **Numbers**: commas in prose for 4 or more digits; no commas inside formulas, `(from ...)`, `(true ...)` and `(answer ...)`. A `number` check reads "1,000", 2 1/4 and 2.25 as typed.
- Grade 4 words: sentences of 15 words or fewer, one new term a step, "you", present tense, numbers as digits, US spelling and units (meter, liter, kilometer, milliliter).

## 01-converting/ -- Converting units

Know the relative sizes of units in one system and write a measurement in a smaller unit. Standards: 4.MD.A.1.

1. `01-metric-length.md` -- Know that 1 kilometer = 1,000 meters and 1 meter = 100 centimeters, convert kilometers and meters to smaller units, and record them in a two-column table.  
   Standards: "4.MD.A.1". Keywords: "kilometer".
2. `02-customary-length.md` -- Know that 1 foot = 12 inches and 1 yard = 3 feet, and convert yards and feet to smaller units in a table.  
   Standards: "4.MD.A.1". Keywords: "yard (unit of length)".
3. `03-kilograms-and-liters.md` -- Know that 1 kilogram = 1,000 grams and 1 liter = 1,000 milliliters, and convert kilograms and liters to smaller units.  
   Standards: "4.MD.A.1". Keywords: "milliliter".
4. `04-pounds-and-ounces.md` -- Know that pounds and ounces measure weight and 1 pound = 16 ounces, and convert pounds to ounces in a table.  
   Standards: "4.MD.A.1". Keywords: "weight", "pound (unit of weight)", "ounce".
5. `05-time-units.md` -- Know that 1 hour = 60 minutes and 1 minute = 60 seconds, and convert hours and minutes to smaller units in a table.  
   Standards: "4.MD.A.1". Keywords: (none new).

## 02-measurement-problems/ -- Measurement problems

Solve word problems about distances, time, liquid volume, mass and money with the four operations. Standards: 4.MD.A.2.

1. `01-distances.md` -- Solve word problems about distances with the four operations, showing them on a number line with a measurement scale.  
   Standards: "4.MD.A.2". Keywords: (none new).
2. `02-mass-and-volume.md` -- Solve word problems about masses and liquid volumes, including amounts with simple fractions or decimals of a unit.  
   Standards: "4.MD.A.2". Keywords: (none new).
3. `03-time-intervals.md` -- Solve word problems about intervals of time across hours, in hours, minutes and seconds, with a number line.  
   Standards: "4.MD.A.2". Keywords: (none new).
4. `04-money.md` -- Solve word problems about money in dollars and cents by working in cents and writing the answer in dollars and cents.  
   Standards: "4.MD.A.2". Keywords: (none new).
5. `05-mixed-units.md` -- Solve problems that need a larger unit written in a smaller one first, such as 2 feet 5 inches minus 9 inches.  
   Standards: "4.MD.A.2", "4.MD.A.1". Keywords: (none new).

## 03-area-perimeter/ -- Area and perimeter formulas

Use the area and perimeter formulas for rectangles, including to find an unknown side. Standards: 4.MD.A.3.

1. `01-area-formula.md` -- Use the formula A = l x w to find the area of a rectangle, and explain it with unit squares.  
   Standards: "4.MD.A.3". Keywords: "formula".
2. `02-perimeter-formula.md` -- Use the formula P = 2 x l + 2 x w, or P = 2 x (l + w), to find the perimeter of a rectangle.  
   Standards: "4.MD.A.3". Keywords: (none new).
3. `03-unknown-side-area.md` -- Find an unknown side of a rectangle from its area and the other side, such as the width of a room from its floor area and length.  
   Standards: "4.MD.A.3". Keywords: (none new).
4. `04-unknown-side-perimeter.md` -- Find an unknown side of a rectangle from its perimeter and the other side.  
   Standards: "4.MD.A.3". Keywords: (none new).
5. `05-area-perimeter-problems.md` -- Solve real-world problems with big rectangles, choosing the area or the perimeter formula.  
   Standards: "4.MD.A.3". Keywords: (none new).

## 04-line-plots/ -- Line plots with fractions

Measure to the nearest eighth inch, make line plots of fractional measurements, and solve problems from them. Standards: 4.MD.B.4.

1. `01-eighth-inches.md` -- Measure a length to the nearest eighth inch with a ruler.  
   Standards: "4.MD.B.4". Keywords: "eighth inch".
2. `02-fraction-line-plots.md` -- Make and read a line plot of measurements in halves, quarters and eighths of a unit.  
   Standards: "4.MD.B.4". Keywords: (none new).
3. `03-line-plot-differences.md` -- Find the difference between the longest and the shortest measurement on a line plot by subtracting fractions.  
   Standards: "4.MD.B.4". Keywords: (none new).
4. `04-line-plot-totals.md` -- Find a total from a line plot by adding fractions, writing them all in eighths first.  
   Standards: "4.MD.B.4". Keywords: (none new).

## 05-lines-angles/ -- Lines and angles

Draw and name points, lines, line segments, rays, angles, and perpendicular and parallel lines. Standards: 4.G.A.1.

1. `01-points-lines-segments.md` -- Draw and name points, lines and line segments, and tell a line from a line segment by its endpoints.  
   Standards: "4.G.A.1". Keywords: "line segment", "endpoint".
2. `02-rays-and-angles.md` -- Draw a ray, and draw and name an angle as two rays with a common endpoint, its vertex.  
   Standards: "4.G.A.1". Keywords: "ray (in geometry)", "angle", "vertex (of an angle)".
3. `03-acute-and-obtuse.md` -- Tell whether an angle is right, acute or obtuse by comparing it with a right angle.  
   Standards: "4.G.A.1". Keywords: "acute angle", "obtuse angle".
4. `04-perpendicular-parallel.md` -- Draw and find perpendicular lines, which meet at right angles, and parallel lines, which never meet.  
   Standards: "4.G.A.1". Keywords: "perpendicular", "parallel".
5. `05-lines-in-shapes.md` -- Find segments, angles, and perpendicular and parallel sides in polygons and other two-dimensional figures.  
   Standards: "4.G.A.1". Keywords: (none new).

## 06-measuring-angles/ -- Measuring angles

Measure angles in degrees as turns of a circle, with a protractor, and add angle measures. Standards: 4.MD.C.5a, 4.MD.C.5b, 4.MD.C.6, 4.MD.C.7.

1. `01-degrees.md` -- Explain an angle's measure as the part of a circle it turns through, with 1 degree as 1/360 of a full turn.  
   Standards: "4.MD.C.5a". Keywords: "degree (of an angle)".
2. `02-turns.md` -- Explain that an angle that turns through n one-degree angles measures n degrees, and know a quarter turn is 90°, a half turn (a straight angle) 180° and a full turn 360°.  
   Standards: "4.MD.C.5a", "4.MD.C.5b". Keywords: "straight angle".
3. `03-protractor.md` -- Measure an angle in whole degrees with a protractor, reading the scale that starts at 0 on one ray.  
   Standards: "4.MD.C.6". Keywords: "protractor".
4. `04-drawing-angles.md` -- Draw an angle of a given measure with a protractor, and check it is acute, right or obtuse as it should be.  
   Standards: "4.MD.C.6". Keywords: (none new).
5. `05-adding-angles.md` -- Find the measure of an angle split into parts by adding the measures of the parts.  
   Standards: "4.MD.C.7". Keywords: (none new).
6. `06-unknown-angles.md` -- Find an unknown angle in a diagram or a word problem with an adding or subtracting equation and a letter for the unknown.  
   Standards: "4.MD.C.7". Keywords: (none new).

## 07-shapes-symmetry/ -- Classifying shapes and symmetry

Classify triangles and quadrilaterals by their lines and angles, and find lines of symmetry. Standards: 4.G.A.2, 4.G.A.3.

1. `01-triangles.md` -- Classify triangles by their angles as right, acute or obtuse, and find the right triangles in a set of shapes.  
   Standards: "4.G.A.2". Keywords: "right triangle", "acute triangle", "obtuse triangle".
2. `02-parallelograms.md` -- Classify quadrilaterals by their parallel and perpendicular sides, and explain why rectangles, rhombuses and squares are all parallelograms.  
   Standards: "4.G.A.2". Keywords: "parallelogram".
3. `03-sorting-shapes.md` -- Sort two-dimensional figures by whether they have parallel sides, perpendicular sides, or right, acute or obtuse angles.  
   Standards: "4.G.A.2". Keywords: (none new).
4. `04-lines-of-symmetry.md` -- Tell whether a line across a figure is a line of symmetry by folding it into matching parts.  
   Standards: "4.G.A.3". Keywords: "line of symmetry".
5. `05-drawing-symmetry.md` -- Find and draw all the lines of symmetry of a figure, and tell figures with none.  
   Standards: "4.G.A.3". Keywords: (none new).

Truth notes for 07: a rectangle that is not a square has 2 lines of symmetry, not its diagonals; a square has 4; a parallelogram that is not a rectangle or a rhombus has none; a circle has a line of symmetry through its center in every direction.

## Terms taught later

None: this is the last part of math-4. Grade 5 (math-5) teaches later words; do not use these here: "isosceles", "equilateral", "scalene", "trapezoid", "volume" (alone, of solids: "liquid volume" is known), "coordinate", "thousandth", "improper fraction", "long division".

## Terms taught before this part

From part 3 of math-4 (`03-fractions-decimals`):

- decompose, like denominators (01-adding-fractions); hundredth (of a whole) (04-tenths-hundredths); decimal, decimal point (05-decimals).

From part 2 of math-4 (`02-factors-patterns-fractions`):

- factor pair, divisible, common factor (01-factors); common multiple, prime number, composite number (02-multiples-primes); term (of a pattern) (03-patterns); fifth (of a whole), tenth (of a whole), twelfth (of a whole), simplest form (04-equivalent); benchmark fraction (05-benchmarks); common denominator, common numerator (06-comparing).

From part 1 of math-4 (`01-place-value-operations`):

- standard form, word form, expanded form (01-place-value); standard algorithm, inverse operation (02-rounding-adding); area model, partial product (03-multiplying-one-digit); remainder, partial quotient (05-dividing); multiplicative comparison (06-comparing-problems).

From math-3 (known; do not teach again):

- Multiplication and division: equal groups, multiplication, multiply, equation, factor (of a product), product (of numbers), array, row (of an array), column (of an array), tape diagram, division, divide, dividend, divisor, quotient, related facts, unknown factor, property (of multiplication), commutative property, associative property, parentheses, distributive property, multiple (of a number), multiplication table, round (a number), estimate, regroup, order of operations.
- Fractions: sixth (of a whole), eighth (of a whole), fraction, unit fraction, numerator, denominator, fraction strip, interval (on a number line), equivalent (fractions), half inch, mixed number, quarter inch.
- Measurement and geometry: a.m., p.m., elapsed time, mass, balance (for mass), gram, kilogram, liquid volume, liter, key (of a graph), scale (of a graph), area, unit square, square unit, square centimeter, square meter, square inch, square foot, side length, rectilinear figure, perimeter, polygon, attribute, right angle, quadrilateral, rhombus, category (of shapes).
