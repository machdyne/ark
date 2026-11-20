# Sides and angles together

```lesson
(objective "Classify a triangle by its sides and by its angles together, such as a right isosceles triangle, and explain why an equilateral triangle cannot be right.")
(standards "5.G.B.4")
(minutes 25)
```

You can name a triangle by its sides and its angles at the same time.

By its angles, a triangle is right, acute or obtuse. By its sides, it is equilateral, isosceles or scalene. Use one word from each.

This triangle has a right angle and 2 sides of the same length. It is a **right isosceles** triangle.

```figure
(m5p4-shape '(90 190 210 190 90 70) #f)
(m5p4-right 90 190 0)
(m5p4-tick 90 190 210 190 1)
(m5p4-tick 90 190 90 70 1)
(caption "A right isosceles triangle")
```

```check
(choice
  (ask "A triangle has a right angle and sides of 6, 8 and 10 cm. What is it?")
  (right "a right scalene triangle")
  (wrong "a right isosceles triangle" "6, 8 and 10 are all different, so it is scalene, not isosceles.")
  (wrong "an acute scalene triangle" "It has a right angle, so it is a right triangle, not acute.")
  (hint "Name the angle kind, then the side kind."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.G.B.4: classify two-dimensional figures in a hierarchy based on properties")
```

---

## More pairs

Many pairs can be drawn: an obtuse isosceles triangle, an acute scalene triangle, an obtuse scalene triangle.

```figure
(define k (choice 'k '("A" "B" "C") "Triangle"))
(cond ((= k 0) (m5p4-shape '(60 180 260 180 160 130) #f) (m5p4-tick 60 180 160 130 2) (m5p4-tick 160 130 260 180 2) (caption "A: obtuse isosceles"))
      ((= k 1) (m5p4-shape '(70 190 250 190 120 80) #f) (caption "B: acute scalene"))
      (else (m5p4-shape '(40 190 280 190 100 130) #f) (caption "C: obtuse scalene")))
```

```check
(choice
  (ask "Triangle A has an obtuse angle at the top, and 2 sides of the same length. What is it?")
  (right "obtuse isosceles")
  (wrong "obtuse equilateral" "Only 2 sides are the same length. Equilateral needs all 3.")
  (wrong "acute isosceles" "The top angle is obtuse, more than a right angle. So the triangle is obtuse.")
  (hint "The tick marks show 2 equal sides."))
```

---

## Why an equilateral triangle is never right

In an equilateral triangle, all 3 angles are the same size. In fact, each is 60°.

If one angle were a right angle, all 3 would be. But 2 right angles on one side make 2 parallel sides that never meet.

So an equilateral triangle cannot be right, and it cannot be obtuse either.

```check
(choice
  (ask "Which triangle can NOT be drawn?")
  (right "a right equilateral triangle")
  (wrong "a right isosceles triangle" "It can: the triangle at the start of this lesson is one.")
  (wrong "an obtuse scalene triangle" "It can: triangle C above is one.")
  (wrong "an acute isosceles triangle" "It can: a tall, thin triangle with 2 equal sides is one.")
  (hint "Every angle of an equilateral triangle is 60°."))
```

```sources
(source "Euclid, Elements, Book I, Proposition 5 and its corollary (an equilateral triangle has equal angles) and Proposition 32 (the angles of a triangle make two right angles)")
```

---

## A worked example

```example
(example
  (problem "A triangle has angles of 30°, 30° and 120°. Two sides are 5 cm, one is 8.7 cm. Name it both ways.")
  (step "120° is more than 90°, so it is obtuse.")
  (step "2 sides are 5 cm, so it is isosceles.")
  (step (choice (ask "So it is") (right "an obtuse isosceles triangle")
          (wrong "an obtuse equilateral triangle" "Only 2 sides are the same: isosceles.")))
  (answer "An obtuse isosceles triangle."))
```

---

## Practice

```check
(choice
  (ask "A triangle has 3 angles of 60° and 3 sides of 4 in. Name it both ways.")
  (right "acute equilateral")
  (wrong "right equilateral" "60° is less than 90°: no angle is right. All 3 are acute.")
  (wrong "obtuse equilateral" "No angle is more than 90°. 60° is acute.")
  (hint "Is 60° acute, right or obtuse?"))
```

```check
(choice
  (ask "A triangle has angles of 90°, 50° and 40°, and no 2 sides the same. Name it both ways.")
  (right "right scalene")
  (wrong "right isosceles" "No 2 sides are the same length, so it is scalene.")
  (wrong "acute scalene" "It has a 90° angle, so it is a right triangle.")
  (hint "One angle is 90°."))
```

Name a triangle by its angles and its sides; every pair can be drawn except a right or obtuse equilateral triangle.
