# Line charts

```lesson
(objective "Read a line chart and describe how something changes over time.")
(minutes 20)
(keywords "line chart" "trend")
```

You can read a line chart and say how something changed over time.

A **line chart** shows how a value changes over time. Each point is one value; a line joins the points in time order. Time goes along the bottom axis, the value up the side. This scale starts at 2, not 0, so read the numbers, not just the height.

```figure
(nu2-line '(("Jan" 3.2) ("Feb" 3.0) ("Mar" 3.4) ("Apr" 3.6) ("May" 3.8) ("Jun" 3.6)) 2 4 0.2)
(text 160 16 "Price of a gallon of fuel (\$), made up" 'centre 'small 'bold)
```

```check
(number
  (ask "What was the price in April, in dollars?")
  (answer 3.6) (unit "dollars")
  (wrong-if 3.8 "3.8 is May. April is the 4th point.")
  (wrong-if 3.4 "3.4 is March. April is the 4th point, on the 3.6 line.")
  (hint "Find April along the bottom, go up to the point, then across to the scale."))
```

---

## Up, down, flat

The direction of the line tells the story: a line going up means the value rose; going down, it fell; flat, it stayed the same. The steeper the line, the faster the change.

```check
(choice
  (ask "Between which two months did the price fall?")
  (right "January to February, and May to June" (true "3.0 < 3.2"))
  (wrong "February to March"
    "The line goes up from February to March: 3.0 to 3.4. A fall is a line going down.")
  (wrong "It never fell"
    "Look at January to February: the line goes down from 3.2 to 3.0.")
  (hint "Look for the parts where the line goes down."))
```

---

## The trend

A **trend** is the general direction over the whole chart, looking past small ups and downs. Here the price fell once and rose more, so the trend is upward.

```check
(choice
  (ask "What is the trend from January to June?")
  (right "Upward: the price rose overall, from 3.2 to 3.6" (true "3.6 > 3.2"))
  (wrong "Downward, because it fell in June"
    "One fall at the end does not decide the trend. Over the 6 months the price went from 3.2 to 3.6, mostly rising.")
  (wrong "No trend, because it went up and down"
    "Most charts go up and down a little. The trend is the overall direction: here, up.")
  (hint "Compare the start and the end, and the general direction between."))
```

---

## A worked example

```figure
(nu2-line '(("Mon" 40) ("Tue" 55) ("Wed" 50) ("Thu" 70) ("Fri" 85)) 0 100 10)
(text 160 16 "Visitors to a shop (made up)" 'centre 'small 'bold)
```

```example
(example
  (problem "By how much did visitors go up from Monday to Friday?")
  (step "Monday: 40. Friday: 85 (halfway between 80 and 90).")
  (step "85 - 40 = 45.")
  (answer "Up by 45 visitors."))
```

```check
(number
  (ask "Now you: by how much did visitors go up from Wednesday to Thursday?")
  (answer 20) (unit "visitors") (from "70 - 50")
  (wrong-if 120 "That adds them. Going up by is a difference: 70 - 50.")
  (hint "Wednesday 50, Thursday 70."))
```

---

## Practice

```figure
(nu2-line '(("Mon" 40) ("Tue" 55) ("Wed" 50) ("Thu" 70) ("Fri" 85)) 0 100 10)
(text 160 16 "Visitors to a shop (made up)" 'centre 'small 'bold)
```

```check
(choice
  (ask "Between which two days did visitors rise the fastest?")
  (right "Wednesday to Thursday, up 20" (true "70 - 50 = 20"))
  (wrong "Monday to Tuesday, up 15"
    "Up 15 is less than Wednesday to Thursday, which is up 20. The steepest part of the line is the fastest rise.")
  (wrong "Thursday to Friday, up 15"
    "Thursday to Friday is up 15. Wednesday to Thursday is steeper: up 20.")
  (hint "Look for the steepest part going up."))
```

```check
(choice
  (ask "Which would a line chart show well?")
  (right "A child's height measured every year")
  (wrong "The favorite fruit of 30 people"
    "Fruits are not in time order, so a line joining them means nothing. A bar chart suits that.")
  (wrong "The number of red, blue and green cars in a lot"
    "Colors have no order in time. A line chart is for a value that changes over time.")
  (hint "A line chart is for change over time."))
```

A line chart shows a value over time: read each point against the scale, and look at the overall direction for the trend.
