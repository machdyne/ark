# Outline: Fractions

Part `02-fractions` of `math-3`, Grade 3 Math: 7 units, 43 lessons. This file has no number, so learn ignores it. Write each lesson with exactly the file name, objective and standards below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears.

## Figures

Your own figure procedures go in `lib/fr.scm` only, every name starting with `fr-`. Keep that file under 8 KB (the course has 24 KB for all three parts). Do not edit the other parts' lib files.

Built-in procedures that suit this part (learn_figures.md, "The library"):

- `frac-bar`, `frac-bar-at` -- fraction bars and strips (equal parts, shaded parts, equivalents one above the other, comparing)
- `frac-circle` -- a circle cut into equal parts
- `grid` -- a rectangle or square cut into equal parts
- `number-line`, `nl-mark`, `nl-jump` -- fractions on a number line, jumps of 1/b, fractions past 1, wholes as fractions
- `ruler` -- a ruler in inches with whole and half marks (it has no quarter marks)
- `label`, `caption`

Procedures you may want to write in `lib/fr.scm` (suggestions; name them as you like, with the prefix):

- `fr-ruler4` -- a ruler with quarter-inch marks, for 3.MD.B.4
- `fr-line-plot` -- a line plot: a number line in halves or quarters with stacked X marks
- `fr-cut-shape` -- a shape cut into equal parts of different shapes (same size, different shape)

## Words

- Uses from part 1: equation, factor, product, multiply, divide, estimate, round, multiple, row, column.
- Words the learner knows from grades 1-2 (not keywords): half, halves, third, fourth, quarter, whole, equal parts, equal shares, number line, line plot, data.
- Denominators 2, 3, 4, 6 and 8 only (as the standard says).
- Do not say "area" (taught in part 3): equal parts are "the same size" or "cover the same amount".
- Fractions name parts of one whole, a shape or a length; do not use fractions of a group of objects.
- Avoid the words "key" and "scale (of a graph)" before they are taught in part 3; on a line plot, say "the number line" or "the marks".
- Grade 3 words: sentences of 15 words or fewer, one new term a step, "you", present tense, numbers as digits, US spelling and units.

## 01-equal-parts/ -- Equal parts

Cut shapes into equal parts and name halves, thirds, fourths, sixths and eighths. Standards: 3.G.A.2.

1. `01-equal-parts.md` -- Tell whether a shape is cut into equal parts or not.  
   Standards: "3.G.A.2". Keywords: (none new).
2. `02-halves-thirds-fourths.md` -- Name one part of a shape cut into 2, 3 or 4 equal parts.  
   Standards: "3.G.A.2". Keywords: (none new).
3. `03-sixths-and-eighths.md` -- Name one part of a shape cut into 6 or 8 equal parts.  
   Standards: "3.G.A.2". Keywords: "sixth (of a whole)", "eighth (of a whole)".
4. `04-cutting-shapes.md` -- Cut a rectangle or a circle into a given number of equal parts.  
   Standards: "3.G.A.2". Keywords: (none new).
5. `05-same-size-different-shape.md` -- Explain that equal parts of one whole can have different shapes but must be the same size.  
   Standards: "3.G.A.2". Keywords: (none new).
6. `06-more-parts-smaller-parts.md` -- Explain why the more equal parts a whole is cut into, the smaller each part is.  
   Standards: "3.G.A.2". Keywords: (none new).

## 02-unit-fractions/ -- Unit fractions

Write a fraction for one or more equal parts of a whole. Standards: 3.NF.A.1.

1. `01-fractions.md` -- Write 1/b for 1 of b equal parts of a whole.  
   Standards: "3.NF.A.1". Keywords: "fraction", "unit fraction".
2. `02-numerator-denominator.md` -- Name the numerator and the denominator of a fraction and say what each one counts.  
   Standards: "3.NF.A.1". Keywords: "numerator", "denominator".
3. `03-building-fractions.md` -- Explain a/b as a parts of size 1/b: 3/4 is 3 fourths.  
   Standards: "3.NF.A.1". Keywords: (none new).
4. `04-shaded-parts.md` -- Write the fraction of a bar or a circle that is shaded.  
   Standards: "3.NF.A.1". Keywords: (none new).
5. `05-fractions-of-lengths.md` -- Show a fraction of a length with a fraction strip.  
   Standards: "3.NF.A.1". Keywords: "fraction strip".
6. `06-equal-shares.md` -- Use a unit fraction to name each share when 1 whole is shared equally.  
   Standards: "3.NF.A.1". Keywords: (none new).
7. `07-finding-the-whole.md` -- Draw the whole when you are shown a unit fraction of it.  
   Standards: "3.NF.A.1". Keywords: (none new).

## 03-number-line/ -- Fractions on a number line

Show fractions as points on a number line. Standards: 3.NF.A.2a, 3.NF.A.2b.

1. `01-zero-to-one.md` -- Cut the interval from 0 to 1 on a number line into equal parts.  
   Standards: "3.NF.A.2a". Keywords: "interval (on a number line)".
2. `02-unit-fractions-on-the-line.md` -- Place a unit fraction 1/b on a number line.  
   Standards: "3.NF.A.2a". Keywords: (none new).
3. `03-counting-by-fractions.md` -- Count forward by a unit fraction along a number line: 1/4, 2/4, 3/4, 4/4.  
   Standards: "3.NF.A.2b". Keywords: (none new).
4. `04-placing-fractions.md` -- Place a/b on a number line by marking a lengths of 1/b from 0.  
   Standards: "3.NF.A.2b". Keywords: (none new).
5. `05-naming-points.md` -- Name the fraction at a point on a number line.  
   Standards: "3.NF.A.2b". Keywords: (none new).
6. `06-past-one.md` -- Place fractions greater than 1, such as 5/4, on a number line.  
   Standards: "3.NF.A.2b". Keywords: (none new).
7. `07-strips-and-lines.md` -- Match a fraction strip to the same fraction on a number line.  
   Standards: "3.NF.A.2a", "3.NF.A.2b". Keywords: (none new).

## 04-equivalent/ -- Equivalent fractions

Show and find fractions that are equal. Standards: 3.NF.A.3a, 3.NF.A.3b.

1. `01-same-size.md` -- Show with fraction strips that two fractions are the same size.  
   Standards: "3.NF.A.3a". Keywords: "equivalent (fractions)".
2. `02-same-point.md` -- Show that equivalent fractions are at the same point on a number line.  
   Standards: "3.NF.A.3a". Keywords: (none new).
3. `03-halves-fourths-eighths.md` -- Find fractions equivalent to 1/2, 1/4 and 3/4 in fourths and eighths.  
   Standards: "3.NF.A.3b". Keywords: (none new).
4. `04-thirds-and-sixths.md` -- Find fractions equivalent to 1/3 and 2/3 in sixths.  
   Standards: "3.NF.A.3b". Keywords: (none new).
5. `05-making-equivalents.md` -- Make an equivalent fraction by cutting every part into the same number of smaller parts.  
   Standards: "3.NF.A.3b". Keywords: (none new).
6. `06-why-equivalent.md` -- Explain with a strip or a number line why two fractions are, or are not, equivalent.  
   Standards: "3.NF.A.3b". Keywords: (none new).
7. `07-equivalent-problems.md` -- Solve word problems in which two people have equal amounts written as different fractions.  
   Standards: "3.NF.A.3a", "3.NF.A.3b". Keywords: (none new).

## 05-comparing/ -- Comparing fractions

Compare two fractions with the same numerator or the same denominator. Standards: 3.NF.A.3d.

1. `01-same-whole.md` -- Explain why two fractions can be compared only when they are parts of the same whole.  
   Standards: "3.NF.A.3d". Keywords: (none new).
2. `02-same-denominator.md` -- Compare two fractions with the same denominator.  
   Standards: "3.NF.A.3d". Keywords: (none new).
3. `03-same-numerator.md` -- Compare two fractions with the same numerator.  
   Standards: "3.NF.A.3d". Keywords: (none new).
4. `04-on-the-number-line.md` -- Compare two fractions by where they are on a number line.  
   Standards: "3.NF.A.3d". Keywords: (none new).
5. `05-choosing-a-way.md` -- Choose a way to compare two fractions, write the result with >, = or <, and explain it with a model.  
   Standards: "3.NF.A.3d". Keywords: (none new).
6. `06-comparing-problems.md` -- Solve word problems that compare two fractions.  
   Standards: "3.NF.A.3d". Keywords: (none new).

## 06-whole-numbers/ -- Whole numbers as fractions

Write whole numbers as fractions and find fractions equal to whole numbers. Standards: 3.NF.A.3c, 3.NF.A.3d, 3.NF.A.1, 3.NF.A.2b.

1. `01-one-whole.md` -- Write 1 as a fraction whose numerator and denominator are the same, such as 4/4.  
   Standards: "3.NF.A.3c". Keywords: (none new).
2. `02-over-one.md` -- Write a whole number as a fraction over 1, such as 3 = 3/1.  
   Standards: "3.NF.A.3c". Keywords: (none new).
3. `03-more-wholes.md` -- Find fractions equal to whole numbers, such as 6/2 = 3, on a number line.  
   Standards: "3.NF.A.3c". Keywords: (none new).
4. `04-fractions-and-wholes.md` -- Compare a fraction with a whole number using a number line.  
   Standards: "3.NF.A.3c", "3.NF.A.3d". Keywords: (none new).
5. `05-fraction-problems.md` -- Solve word problems that use all you know about fractions.  
   Standards: "3.NF.A.1", "3.NF.A.2b", "3.NF.A.3c", "3.NF.A.3d". Keywords: (none new).

## 07-measuring/ -- Measuring with fractions

Measure lengths to the nearest half or quarter inch and show them on a line plot. Standards: 3.MD.B.4.

1. `01-half-inches.md` -- Measure a length to the nearest half inch with a ruler.  
   Standards: "3.MD.B.4". Keywords: "half inch".
2. `02-quarter-inches.md` -- Measure a length to the nearest quarter inch with a ruler.  
   Standards: "3.MD.B.4". Keywords: "quarter inch".
3. `03-line-plots.md` -- Read a line plot whose number line is marked in halves or quarters of an inch.  
   Standards: "3.MD.B.4". Keywords: (none new).
4. `04-making-line-plots.md` -- Make a line plot from a set of measured lengths.  
   Standards: "3.MD.B.4". Keywords: (none new).
5. `05-line-plot-questions.md` -- Answer how many, which is most and which is least from a line plot.  
   Standards: "3.MD.B.4". Keywords: (none new).
