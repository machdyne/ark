# Outline: Measurement and geometry

Part `03-measurement-geometry` of `math-3`, Grade 3 Math: 7 units, 45 lessons. This file has no number, so learn ignores it. Write each lesson with exactly the file name, objective and standards below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears.

## Figures

Your own figure procedures go in `lib/ms.scm` only, every name starting with `ms-`. Keep that file under 8 KB (the course has 24 KB for all three parts). Do not edit the other parts' lib files.

Built-in procedures that suit this part (learn_figures.md, "The library"):

- `clock-face`, `clock-dial`, `clock-hands`, `clock-ticking` -- times to the minute; a moving clock keeps true time (dial in `still`)
- `number-line`, `nl-mark`, `nl-jump` -- elapsed time as jumps on a line marked in minutes
- `bar-chart` -- a bar graph (vertical bars; give `top` for the scale)
- `graph`, `graph-axes` -- a bar graph with a scale counting by 2, 5 or 10
- `grid` -- unit squares, tiling, area by rows and columns, rectilinear figures
- `dot-array` -- rows and columns of tiles
- `ruler` -- measuring side lengths in whole units
- `angle-mark` -- marking corners; draw a right angle with a small square (own procedure)
- `tally` -- counting data for a graph
- `label`, `caption`

Procedures you may want to write in `lib/ms.scm` (suggestions; name them as you like, with the prefix):

- `ms-picture-graph` -- rows of symbols with a key, including half symbols
- `ms-hbar` -- a horizontal bar graph with a scale
- `ms-rect` -- a rectangle with its side lengths labelled, optionally gridded
- `ms-poly` -- a polygon from a list of points with side labels (rectilinear figures, quadrilaterals)
- `ms-right` -- the small square that marks a right angle
- `ms-balance` -- a pan balance tipped by two masses
- `ms-jug` -- a container with liter marks filled to a level

## Words

- Uses from part 1: multiply, factor, product, array, row, column, equation, divide, distributive property, estimate, round, multiple, regroup.
- Uses from part 2: fraction, unit fraction, numerator, denominator, half inch, quarter inch.
- Words the learner knows from grades 1-2: hour, minute, analog and digital clock, inch, foot, centimeter, meter, picture graph, bar graph, data, rectangle, square, triangle, side, corner.
- Mass is not weight: say "mass is how much matter (stuff) an object has"; on Earth an object with more mass is heavier. Units are grams, kilograms and liters only (3.MD.A.2). US spelling: liter, meter.
- Benchmarks only if true: a paper clip has a mass of about 1 gram; 1 liter of water has a mass of about 1 kilogram.
- Do not say "quadrilateral" or "right angle" before 07-quadrilaterals teaches them; in area and perimeter say "rectangle" and "shape". "Polygon" is taught in 06-perimeter/02.
- Do not use "trapezoid" or "trapezium" (their meanings differ between countries) or "parallelogram" (not taught).
- Grade 3 words: sentences of 15 words or fewer, one new term a step, "you", present tense, numbers as digits, US spelling and units.

## 01-time/ -- Time and elapsed time

Tell time to the minute and find how much time has passed. Standards: 3.MD.A.1.

1. `01-to-the-minute.md` -- Tell and write the time to the nearest minute from an analog clock.  
   Standards: "3.MD.A.1". Keywords: (none new).
2. `02-am-and-pm.md` -- Use a.m. and p.m. to tell times of the day apart.  
   Standards: "3.MD.A.1". Keywords: "a.m.", "p.m.".
3. `03-elapsed-time.md` -- Find the time that passes between two times within one hour.  
   Standards: "3.MD.A.1". Keywords: "elapsed time".
4. `04-on-a-number-line.md` -- Find elapsed time with jumps on a number line marked in minutes.  
   Standards: "3.MD.A.1". Keywords: (none new).
5. `05-start-and-end.md` -- Find a start time or an end time from the elapsed time.  
   Standards: "3.MD.A.1". Keywords: (none new).
6. `06-adding-minutes.md` -- Add and subtract lengths of time in minutes, such as 45 minutes + 25 minutes = 1 hour 10 minutes.  
   Standards: "3.MD.A.1". Keywords: (none new).
7. `07-time-problems.md` -- Solve word problems about elapsed time in minutes.  
   Standards: "3.MD.A.1". Keywords: (none new).

## 02-mass-volume/ -- Mass and liquid volume

Measure and estimate mass in grams and kilograms and liquid volume in liters. Standards: 3.MD.A.2.

1. `01-mass.md` -- Explain mass as how much matter an object has, and compare masses with a balance.  
   Standards: "3.MD.A.2". Keywords: "mass", "balance (for mass)".
2. `02-grams-and-kilograms.md` -- Measure mass in grams and kilograms.  
   Standards: "3.MD.A.2". Keywords: "gram", "kilogram".
3. `03-estimating-mass.md` -- Estimate a mass in grams or kilograms from objects whose mass you know.  
   Standards: "3.MD.A.2". Keywords: (none new).
4. `04-liquid-volume.md` -- Measure liquid volume in liters with a marked container.  
   Standards: "3.MD.A.2". Keywords: "liquid volume", "liter".
5. `05-estimating-volume.md` -- Estimate a liquid volume in liters from containers whose volume you know.  
   Standards: "3.MD.A.2". Keywords: (none new).
6. `06-mass-volume-problems.md` -- Solve one-step word problems about masses or liquid volumes in the same units.  
   Standards: "3.MD.A.2". Keywords: (none new).

## 03-graphs/ -- Picture graphs and bar graphs

Read and draw picture graphs and bar graphs with a scale. Standards: 3.MD.B.3.

1. `01-picture-graphs.md` -- Read a picture graph whose key shows that each picture stands for more than 1.  
   Standards: "3.MD.B.3". Keywords: "key (of a graph)", "scale (of a graph)".
2. `02-half-pictures.md` -- Read half a picture on a picture graph with a scale.  
   Standards: "3.MD.B.3". Keywords: (none new).
3. `03-making-picture-graphs.md` -- Draw a picture graph with a scale from a table of data.  
   Standards: "3.MD.B.3". Keywords: (none new).
4. `04-bar-graphs.md` -- Read a bar graph whose scale counts by 2, 5 or 10.  
   Standards: "3.MD.B.3". Keywords: (none new).
5. `05-making-bar-graphs.md` -- Draw a bar graph with a scale from a table of data.  
   Standards: "3.MD.B.3". Keywords: (none new).
6. `06-how-many-more.md` -- Solve how many more and how many fewer problems from a graph with a scale.  
   Standards: "3.MD.B.3". Keywords: (none new).

## 04-area/ -- Area

Find the area of a rectangle by counting unit squares and by multiplying. Standards: 3.MD.C.5a, 3.MD.C.5b, 3.MD.C.6, 3.MD.C.7a, 3.MD.C.7b, 3.G.A.2.

1. `01-what-area-is.md` -- Explain area as the amount of flat space a shape covers.  
   Standards: "3.MD.C.5a". Keywords: "area".
2. `02-unit-squares.md` -- Measure area by covering a shape with unit squares with no gaps or overlaps.  
   Standards: "3.MD.C.5a", "3.MD.C.5b". Keywords: "unit square", "square unit".
3. `03-counting-squares.md` -- Find area by counting square centimeters, square meters, square inches and square feet.  
   Standards: "3.MD.C.6". Keywords: "square centimeter", "square meter", "square inch", "square foot".
4. `04-tiling.md` -- Show that tiling a rectangle gives the same area as multiplying its side lengths.  
   Standards: "3.MD.C.7a". Keywords: "side length".
5. `05-multiplying.md` -- Find the area of a rectangle by multiplying its side lengths.  
   Standards: "3.MD.C.7b". Keywords: (none new).
6. `06-unknown-side.md` -- Find an unknown side length of a rectangle from its area and the other side.  
   Standards: "3.MD.C.7b". Keywords: (none new).
7. `07-area-problems.md` -- Solve word problems about the area of rectangles.  
   Standards: "3.MD.C.7b". Keywords: (none new).
8. `08-equal-areas.md` -- Cut a shape into parts with equal areas and name each part as a unit fraction of the whole.  
   Standards: "3.G.A.2". Keywords: (none new).

## 05-combined-shapes/ -- Area of combined shapes

Find areas by breaking shapes into rectangles. Standards: 3.MD.C.7c, 3.MD.C.7d.

1. `01-break-apart.md` -- Show with area that 6 x 7 = 6 x 5 + 6 x 2, the distributive property.  
   Standards: "3.MD.C.7c". Keywords: (none new).
2. `02-splitting-rectangles.md` -- Split a rectangle into two smaller rectangles to find its area.  
   Standards: "3.MD.C.7c". Keywords: (none new).
3. `03-rectilinear-figures.md` -- Find the area of a rectilinear figure by adding the areas of its rectangles.  
   Standards: "3.MD.C.7d". Keywords: "rectilinear figure".
4. `04-taking-away.md` -- Find the area of a rectilinear figure by subtracting a missing rectangle.  
   Standards: "3.MD.C.7d". Keywords: (none new).
5. `05-combined-problems.md` -- Solve word problems about the area of rooms and gardens made of rectangles.  
   Standards: "3.MD.C.7d". Keywords: (none new).

## 06-perimeter/ -- Perimeter

Find perimeters and tell perimeter and area apart. Standards: 3.MD.D.8, 3.MD.C.7b.

1. `01-what-perimeter-is.md` -- Explain perimeter as the distance all the way around a flat shape.  
   Standards: "3.MD.D.8". Keywords: "perimeter".
2. `02-polygons.md` -- Find the perimeter of a polygon by adding its side lengths.  
   Standards: "3.MD.D.8". Keywords: "polygon".
3. `03-rectangles.md` -- Find the perimeter of a rectangle from the lengths of 2 sides that meet.  
   Standards: "3.MD.D.8". Keywords: (none new).
4. `04-unknown-side.md` -- Find an unknown side length from the perimeter.  
   Standards: "3.MD.D.8". Keywords: (none new).
5. `05-same-perimeter.md` -- Show that rectangles with the same perimeter can have different areas.  
   Standards: "3.MD.D.8". Keywords: (none new).
6. `06-same-area.md` -- Show that rectangles with the same area can have different perimeters.  
   Standards: "3.MD.D.8". Keywords: (none new).
7. `07-perimeter-or-area.md` -- Decide whether a word problem asks for perimeter or area, and solve it.  
   Standards: "3.MD.D.8", "3.MD.C.7b". Keywords: (none new).

## 07-quadrilaterals/ -- Quadrilaterals

Sort quadrilaterals by their attributes and name rhombuses, rectangles and squares. Standards: 3.G.A.1.

1. `01-attributes.md` -- Describe a shape by its attributes: the number of sides and corners and the lengths of its sides.  
   Standards: "3.G.A.1". Keywords: "attribute".
2. `02-right-angles.md` -- Find right angles, square corners, in shapes.  
   Standards: "3.G.A.1". Keywords: "right angle".
3. `03-quadrilaterals.md` -- Tell whether a polygon is a quadrilateral.  
   Standards: "3.G.A.1". Keywords: "quadrilateral".
4. `04-rhombuses-rectangles-squares.md` -- Name rhombuses, rectangles and squares by their sides and right angles.  
   Standards: "3.G.A.1". Keywords: "rhombus".
5. `05-categories.md` -- Explain why a square is also a rectangle and a rhombus, and why all three are quadrilaterals.  
   Standards: "3.G.A.1". Keywords: "category (of shapes)".
6. `06-other-quadrilaterals.md` -- Draw quadrilaterals that are not rhombuses, rectangles or squares.  
   Standards: "3.G.A.1". Keywords: (none new).
