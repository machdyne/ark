# Elapsed time

```lesson
(objective "Find the time that passes between two times within one hour.")
(standards "3.MD.A.1")
(minutes 20)
(keywords "elapsed time")
```

You can find how much time passes from a start time to an end time.

The time that passes from the start to the end is the **elapsed time**.

A class starts at 3:10. Move the slider to let time pass. The left clock stays at the start.

```figure
(define m (slider 'm 0 45 0 "Minutes passed" 5))
(clock-face 85 105 65 3 10)
(clock-face 235 105 65 3 (+ 10 m))
(label 85 192 "Start: 3:10" 'small)
(label 235 192 (string-append "Now: " (ms-hm 3 (+ 10 m))) 'small)
(caption (string-append "Elapsed time: " (fmt m 0) " minutes"))
```

```check
(number
  (ask "The class starts at 3:10 and ends at 3:40. What is the elapsed time, in minutes?")
  (answer 30) (unit "minutes") (from "40 - 10")
  (wrong-if 40 "40 is where the long hand ends, at 3:40. The class started at 10 minutes, so count only from 10 to 40.")
  (wrong-if 50 "The minutes go from 10 to 40. That is 30 minutes, not 10 + 40.")
  (hint "The long hand goes from the 2 to the 8.")
  (hint "Count by 5s from 10 to 40."))
```

---

## Count by 5s on the clock

Look at where the long hand starts. Count by 5s for each number it passes.

From 4:05 to 4:30, the long hand goes from the 1 to the 6. That is 5 numbers. Count 5, 10, 15, 20, 25.

```figure
(clock-dial 160 115 100)
(arc 160 115 88 (- 90 180) (- 90 30) 'warm 3)
(line 160 115 200 45.7 'cool 2)
(clock-hands 160 115 100 4 30)
(caption "The extra line: the long hand at 4:05. Now it is 4:30.")
```

```check
(number
  (ask "How many minutes pass from 6:15 to 6:45?")
  (answer 30) (unit "minutes") (from "45 - 15")
  (wrong-if 60 "15 + 45 adds the two times. Elapsed time counts only the minutes between them, from 15 to 45.")
  (wrong-if 45 "45 is the end time. The start was 15 minutes after 6, not 6:00.")
  (hint "The long hand goes from the 3 to the 9.")
  (hint "That is 6 numbers. Count 6 fives."))
```

---

## Then count by 1s

Times are not always on a 5. Count by 5s as far as you can. Then count on by 1s.

From 2:20 to 2:47, count 5s from 20: 25, 30, 35, 40, 45. That is 25 minutes. Then 2 more to 47.

$$ 25 + 2 = 27 $$

```figure
(clock-face 85 105 65 2 20)
(clock-face 235 105 65 2 47)
(label 85 192 "Start: 2:20" 'small)
(label 235 192 "End: 2:47" 'small)
(caption "5 fives, then 2 ones: 27 minutes")
```

```check
(number
  (ask "How many minutes pass from 5:10 to 5:33?")
  (answer 23) (unit "minutes") (from "33 - 10")
  (wrong-if 43 "10 + 33 adds the two times. Count only the minutes between 5:10 and 5:33.")
  (wrong-if 20 "Count by 5s to 5:30, which is 20 minutes. Then count on by 1s to 5:33.")
  (hint "Count by 5s from 5:10 to 5:30.")
  (hint "That is 20 minutes. Then count 31, 32, 33."))
```

---

## A worked example

```figure
(clock-face 85 105 65 9 5)
(clock-face 235 105 65 9 52)
(label 85 192 "Start: 9:05" 'small)
(label 235 192 "End: 9:52" 'small)
```

```example
(example
  (problem "Sam reads from 9:05 to 9:52. How long does Sam read?")
  (step "The hour stays 9. So only the minutes change, from 5 to 52.")
  (step "Count by 5s from 5 to 50: 10, 15, 20, 25, 30, 35, 40, 45, 50. That is 45 minutes.")
  (step "Count on by 1s from 50 to 52. That is 2 more.")
  (step (number (ask "45 + 2 = ?") (answer 47) (from "45 + 2")
          (wrong-if 57 "Add the 2 ones to 45, not 2 tens. 45 + 2 is 47.")))
  (answer "Sam reads for 47 minutes."))
```

---

## Now you finish one

```figure
(clock-face 85 105 65 1 25)
(clock-face 235 105 65 1 58)
(label 85 192 "Start: 1:25" 'small)
(label 235 192 "End: 1:58" 'small)
```

A game starts at 1:25 and ends at 1:58. From 1:25 to 1:55 is 30 minutes.

```check
(number
  (ask "How many minutes pass from 1:25 to 1:58?")
  (answer 33) (unit "minutes") (from "58 - 25")
  (wrong-if 30 "30 minutes takes you only to 1:55. Count on 3 more to 1:58.")
  (wrong-if 83 "25 + 58 adds the two times. Count only the minutes between them.")
  (hint "Start at 30 minutes for 1:25 to 1:55.")
  (hint "From 1:55 to 1:58 is 3 more minutes."))
```

---

## Practice

```check
(number
  (ask "Lunch is from 11:30 to 11:55. How many minutes long is lunch?")
  (answer 25) (unit "minutes") (from "55 - 30")
  (wrong-if 85 "30 + 55 adds the two times. Count by 5s from 30 to 55 instead.")
  (wrong-if 55 "55 is the end time. Lunch started at 11:30, not 11:00.")
  (hint "Count by 5s: 35, 40, 45, 50, 55."))
```

```check
(number
  (ask "A bus leaves at 7:02 and arrives at 7:41. How many minutes is the trip?")
  (answer 39) (unit "minutes") (from "41 - 2")
  (wrong-if 41 "41 counts from 7:00. The bus left at 7:02, so take away those 2 minutes.")
  (wrong-if 43 "41 + 2 adds the 2 minutes. The trip starts 2 minutes after 7:00, so there are 2 minutes fewer.")
  (hint "From 7:02 to 7:42 would be 40 minutes.")
  (hint "7:41 is 1 minute before 7:42."))
```

---

```figure
(clock-face 85 105 65 10 40)
(clock-face 235 105 65 10 58)
(label 85 192 "Start" 'small)
(label 235 192 "End" 'small)
```

```check
(choice
  (ask "What is the elapsed time from the start clock to the end clock?")
  (right "18 minutes" (true "58 - 40 = 18"))
  (wrong "58 minutes" (false "58 - 40 = 58")
    "58 is where the long hand ends. It started at 40 minutes, so count from 40 to 58.")
  (wrong "20 minutes" (false "58 - 40 = 20")
    "40 to 60 would be 20 minutes. The long hand stops at 58, 2 marks before the 12.")
  (hint "Read both clocks first: 10:40 and 10:58."))
```

Now you can find elapsed time within 1 hour: count by 5s, then by 1s, from the start to the end.
