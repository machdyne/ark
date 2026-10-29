# Start time and end time

```lesson
(objective "Find a start time or an end time from the elapsed time.")
(standards "3.MD.A.1")
(minutes 25)
```

You can find when something ends, or when it started, from how long it takes.

To find an end time, start at the start time. Jump forward by the elapsed time.

A race starts at 10:15 and takes 25 minutes. Move the slider to jump forward.

```figure
(ms-tline 30 290 150 10 0 60 5 15)
(define j (slider 'j 0 25 0 "Minutes after 10:15" 5))
(nl-mark 15 'warm)
(if (> j 0) (nl-jump 15 (+ 15 j) 'ink (string-append "+" (fmt j 0))))
(nl-mark (+ 15 j) 'cool)
(caption (string-append "Start 10:15. Now " (ms-hm 10 (+ 15 j))))
```

```check
(text
  (ask "The race starts at 10:15 and takes 25 minutes. When does it end? Type it like 9:07.")
  (accept "10:40")
  (wrong-if "10:25" "10:25 is only 10 minutes after 10:15. Jump forward all 25 minutes.")
  (wrong-if "10:50" "Jump 25 minutes from 10:15: 10:20, 10:25, 10:30, 10:35, 10:40.")
  (hint "Jump 15 minutes to 10:30 first.")
  (hint "15 of the 25 minutes are used. Jump 10 more."))
```

---

## Past the hour

Sometimes the end time is in the next hour. Jump to the hour first.

A movie starts at 4:50 and lasts 30 minutes. Jump 10 minutes to 5:00. That leaves 20 more minutes. Jump to 5:20.

```figure
(ms-tline 30 290 150 4 30 60 5 15)
(nl-mark 20 'warm)
(label (nl-x 20) 186 "4:50" 'small 'bold)
(nl-jump 20 30 'ink "+10")
(nl-jump 30 50 'ink "+20")
(nl-mark 50 'cool)
(label (nl-x 50) 186 "5:20" 'small 'bold)
(caption "4:50 + 30 minutes = 5:20")
```

```check
(text
  (ask "Recess starts at 1:45 and lasts 20 minutes. When does it end? Type it like 9:07.")
  (accept "2:05")
  (wrong-if "1:65" "There are only 60 minutes in an hour. At 60 minutes the hour changes to 2:00.")
  (wrong-if "2:20" "From 1:45 to 2:00 is 15 minutes. Only 5 of the 20 minutes are left after that.")
  (hint "Jump from 1:45 to 2:00. How many minutes is that?")
  (hint "15 minutes. Then 5 more minutes after 2:00."))
```

---

## Find the start time

To find a start time, start at the end time. Jump back by the elapsed time.

Ben's bread bakes for 35 minutes. It is done at 6:50. Jump back 35 minutes from 6:50.

```figure
(ms-tline 30 290 150 6 0 60 5 15)
(nl-mark 50 'cool)
(label (nl-x 50) 186 "6:50" 'small 'bold)
(nl-jump 50 20 'ink "-30")
(nl-jump 20 15 'ink "-5")
(nl-mark 15 'warm)
(caption "6:50 - 35 minutes = 6:15")
```

```check
(text
  (ask "A swim lesson ends at 3:55. It lasts 40 minutes. When does it start? Type it like 9:07.")
  (accept "3:15")
  (wrong-if "4:35" "You jumped forward. To find a start time, jump back from the end time.")
  (wrong-if "3:25" "Check the jump: from 3:25 to 3:55 is only 30 minutes. Jump back 10 more.")
  (hint "Jump back 40 minutes from 3:55.")
  (hint "Back 40 from 55 minutes is 15 minutes."))
```

---

## A worked example

```example
(example
  (problem "A pizza needs 25 minutes in the oven. It goes in at 5:40. When is it done?")
  (step "This asks for an end time. Jump forward from 5:40.")
  (step "Jump 20 minutes from 5:40 to 6:00.")
  (step "5 of the 25 minutes are left. Jump 5 more to 6:05.")
  (answer "The pizza is done at 6:05."))
```

---

## Now you finish one

A train trip lasts 45 minutes. The train arrives at 9:50. You want the start time.

```check
(choice
  (ask "What do you do first?")
  (right "Jump back 45 minutes from 9:50")
  (wrong "Jump forward 45 minutes from 9:50"
    "Jumping forward finds a later time. The start is before the end, so jump back.")
  (wrong "Add 9:50 and 45"
    "You do not add a time to a length of time like numbers. Start at 9:50 and jump back 45 minutes.")
  (hint "Is the start time before or after 9:50?"))
```

```check
(text
  (ask "When did the train leave? Type it like 9:07.")
  (accept "9:05")
  (wrong-if "9:15" "From 9:15 to 9:50 is 35 minutes. You need 45, so jump back 10 more.")
  (wrong-if "10:35" "That jumps forward. The train left before it arrived, so jump back.")
  (hint "Back 45 from 50 minutes.")
  (hint "50 - 45 = 5."))
```

---

## Practice

```check
(text
  (ask "Art class starts at 11:20 and lasts 35 minutes. When does it end? Type it like 9:07.")
  (accept "11:55")
  (wrong-if "11:45" "From 11:20 to 11:45 is 25 minutes. Jump 10 more.")
  (wrong-if "12:55" "35 minutes is less than 1 hour. The hour stays 11, because 20 + 35 is less than 60.")
  (hint "Jump forward 35 minutes from 11:20.")
  (hint "20 + 35 = 55."))
```

```check
(text
  (ask "Kim jogs for 30 minutes and stops at 7:10. When did she start? Type it like 9:07.")
  (accept "6:40")
  (wrong-if "7:40" "That jumps forward. She started before she stopped, so jump back.")
  (wrong-if "7:20" "You cannot take 30 from 10 minutes and stay in the 7 hour. Jump back 10 to 7:00, then 20 more.")
  (hint "Jump back 10 minutes to 7:00.")
  (hint "20 minutes are left. Jump back from 7:00 to 6:40."))
```

---

```check
(text
  (ask "A nap starts at 2:35 and lasts 50 minutes. When does it end? Type it like 9:07.")
  (accept "3:25")
  (wrong-if "2:85" "There are only 60 minutes in an hour. Jump to 3:00 first, then on.")
  (wrong-if "3:35" "From 2:35 to 3:35 is 60 minutes. The nap is 50, so it ends 10 minutes earlier.")
  (hint "From 2:35 to 3:00 is 25 minutes.")
  (hint "25 of the 50 minutes are left after 3:00."))
```

Now you can jump forward from a start time to find the end, or back from an end time to find the start.
