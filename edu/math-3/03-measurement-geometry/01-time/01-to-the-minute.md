# Time to the minute

```lesson
(objective "Tell and write the time to the nearest minute from an analog clock.")
(standards "3.MD.A.1")
(minutes 20)
```

You can read an analog clock to the exact minute.

The short hand shows the hour. The long hand shows the minutes.
There are 60 small marks around the clock. Each small mark is 1 minute.

Move the slider. Watch the long hand move 1 mark at a time.

```figure
(define m (slider 'm 0 59 10 "Minutes after 2:00" 1))
(clock-face 160 115 100 2 m)
(caption (string-append "2:" (if (< m 10) "0" "") (fmt m 0)))
```

```check
(number
  (ask "The long hand moves from the 12 to the 1. How many minutes pass?")
  (answer 5) (unit "minutes") (from "60 / 12")
  (wrong-if 1 "The 1 is a number, not a small mark. Count the small marks from the 12 to the 1: there are 5.")
  (wrong-if 60 "60 minutes is all the way around. From the 12 to the 1 is only one part of 12.")
  (hint "Count the small marks between the 12 and the 1.")
  (hint "There are 5 small spaces."))
```

---

## Count by 5s, then by 1s

To read the minutes, start at the 12. Count by 5s for each number the long hand passes. Then count on by 1s for the small marks.

Here the long hand is 2 marks past the 5. Count 5, 10, 15, 20, 25. Then 26, 27.

```figure
(clock-face 160 115 100 3 27)
(caption "3:27")
```

```check
(number
  (ask "The long hand is 3 small marks past the 8. How many minutes is that?")
  (answer 43) (unit "minutes") (from "8 * 5 + 3")
  (wrong-if 83 "The 8 does not mean 8 minutes here. Each number is 5 minutes, so the 8 is 40 minutes. Then add 3.")
  (wrong-if 11 "8 + 3 counts the 8 as 8 minutes. Count by 5s to the 8: that is 40. Then 3 more.")
  (hint "Count by 5s from the 12 to the 8.")
  (hint "The 8 is 40 minutes. Now count on 3 small marks."))
```

---

## The hour hand

The short hand moves slowly between two numbers. The hour is the last number it has passed.

At 6:52 the short hand is close to the 7. But it has not reached the 7 yet. So the hour is still 6.

```figure
(clock-face 160 115 100 6 52)
(caption "The short hand is just before the 7.")
```

```check
(choice
  (ask "The short hand is between the 6 and the 7. The long hand shows 52 minutes. What time is it?")
  (right "6:52")
  (wrong "7:52"
    "The short hand is close to the 7, but it has not passed it. The hour is the number it last passed, the 6.")
  (wrong "10:35"
    "That reads the hands the wrong way round. The short hand shows the hour, and the long hand shows the minutes.")
  (hint "Which number has the short hand passed?"))
```

---

## Writing the time

You write the hour, then a colon (:), then the minutes. The minutes always have 2 digits.

7 minutes after 9 is written 9:07. The 0 shows there are no tens of minutes.

```figure
(clock-face 160 115 100 9 7)
```

```check
(text
  (ask "Write the time on this clock. Type it like 9:07.")
  (accept "9:07")
  (wrong-if "9:7" "Minutes always have 2 digits. 7 minutes is written 07, so the time is 9:07.")
  (wrong-if "9:35" "The long hand points to 7 small marks, not to the number 7. 7 marks is 7 minutes.")
  (hint "The short hand is just past the 9.")
  (hint "The long hand is 2 marks past the 1: 5, 6, 7."))
```

---

## A worked example

```figure
(clock-face 160 115 100 11 18)
```

```example
(example
  (problem "What time does this clock show?")
  (step "The short hand has passed the 11, but not the 12. The hour is 11.")
  (step "The long hand is 3 marks past the 3. Count 5, 10, 15, then 16, 17, 18.")
  (step "Write the hour, a colon, then 2 digits for the minutes.")
  (answer "11:18"))
```

---

## Now you finish one

```figure
(clock-face 160 115 100 4 39)
```

The short hand is between the 4 and the 5. The long hand is 4 marks past the 7.

```check
(number
  (ask "How many minutes after 4:00 is it?")
  (answer 39) (unit "minutes") (from "7 * 5 + 4")
  (wrong-if 74 "The 7 stands for 35 minutes, not 7. Count by 5s to the 7, then 4 more.")
  (wrong-if 41 "Count the small marks past the 7 again. There are 4, not 6.")
  (hint "Count by 5s to the 7: 5, 10, 15, 20, 25, 30, 35.")
  (hint "Then count on 4 more: 36, 37, 38, 39."))
```

---

## Practice

```figure
(clock-face 160 115 100 1 56)
```

```check
(choice
  (ask "What time does this clock show?")
  (right "1:56")
  (wrong "2:56"
    "The short hand is near the 2, but it has not reached it. The hour is 1.")
  (wrong "11:10"
    "That reads the hands the wrong way round. The long hand shows minutes: it is 1 mark past the 11, at 56 minutes.")
  (wrong "1:54"
    "The 11 is 55 minutes. The long hand is 1 mark past the 11, so count on 1: 56.")
  (hint "The long hand is just past the 11. The 11 is 55 minutes."))
```

---

```figure
(clock-face 160 115 100 10 3)
```

```check
(text
  (ask "Write the time on this clock, like 9:07.")
  (accept "10:03")
  (wrong-if "10:3" "Minutes always have 2 digits. 3 minutes is written 03.")
  (wrong-if "10:15" "The long hand is 3 small marks past the 12, not on the 3. That is 3 minutes.")
  (hint "The long hand is just past the 12.")
  (hint "Count the small marks past the 12: 1, 2, 3."))
```

---

## A clock that keeps time

This clock is running. The thin hand is the second hand. Each time it goes all the way around, 1 minute passes. Then the long hand moves on 1 mark.

```figure
(still (clock-dial 160 115 100))
(clock-ticking 160 115 100 5 21)
```

```check
(number
  (ask "The clock shows 5:21. The second hand goes around 1 time. What are the minutes now?")
  (answer 22) (from "21 + 1")
  (wrong-if 21 "1 trip of the second hand is 1 minute. So the minutes go up by 1.")
  (wrong-if 81 "1 trip of the second hand is 1 minute, not 60 minutes.")
  (hint "How long does the second hand take to go around once?"))
```

Now you can read a clock to the minute: the hour the short hand last passed, then the minutes by 5s and 1s.
