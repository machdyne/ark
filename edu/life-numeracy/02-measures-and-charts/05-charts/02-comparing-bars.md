# Comparing with bars

```lesson
(objective "Read a grouped bar chart with a key.")
(minutes 20)
(keywords "key (of a chart)" "grouped bar chart")
```

You can read a bar chart that compares two sets of data side by side.

A **grouped bar chart** puts two or more bars side by side for each item, so you can compare them. A **key** (or legend) says which pattern stands for which set of data.

This made-up chart shows a small café's sales of hot and cold drinks each season.

```figure
(nu2-bars2 '(("Win" 80 20) ("Spr" 60 40) ("Sum" 30 90) ("Fall" 70 30)) 100 20 'warm 'cool)
(nu2-key 236 13 '(("Hot" warm) ("Cold" cool)))
(caption "Drinks sold per day")
```

```check
(number
  (ask "How many cold drinks a day were sold in summer?")
  (answer 90) (unit "drinks")
  (wrong-if 30 "30 is the hot drinks in summer. Look at the key: cold drinks have the pattern shown beside Cold.")
  (hint "Find the cold-drink pattern in the key.")
  (hint "Find that bar in the summer group."))
```

---

## Comparing within a group

In each group, compare the two bars to see which is bigger and by how much.

```figure
(nu2-bars2 '(("Win" 80 20) ("Spr" 60 40) ("Sum" 30 90) ("Fall" 70 30)) 100 20 'warm 'cool)
(nu2-key 236 13 '(("Hot" warm) ("Cold" cool)))
```

```check
(number
  (ask "In spring, how many more hot drinks than cold drinks were sold each day?")
  (answer 20) (unit "drinks") (from "60 - 40")
  (wrong-if 100 "That adds them. How many more is the difference: 60 - 40.")
  (hint "Spring: hot 60, cold 40."))
```

---

## Comparing across groups

You can also follow one pattern across the groups to see how it changes.

```check
(choice
  (ask "What happens to hot-drink sales from winter to summer?")
  (right "They fall, from 80 to 30" (true "80 > 30"))
  (wrong "They rise, from 20 to 90"
    "Those are the cold drinks. Follow the hot-drink pattern in the key: 80, 60, 30.")
  (wrong "They stay the same"
    "Read the hot bar in each season: 80 in winter, 30 in summer. They change a lot.")
  (hint "Follow only the hot-drink bars."))
```

---

## A worked example

```example
(example
  (problem "In which season were the most drinks sold in all?")
  (step "Winter: 80 + 20 = 100.")
  (step "Spring: 60 + 40 = 100. Fall: 70 + 30 = 100.")
  (step "Summer: 30 + 90 = 120.")
  (answer "Summer, with 120 drinks a day."))
```

```check
(number
  (ask "Now you: what fraction of fall's drinks were hot? Give a decimal.")
  (answer 0.7) (from "70 / (70 + 30)")
  (wrong-if 2.33 "That is hot divided by cold. Divide hot by the total: 70 / 100.")
  (hint "Fall: 70 hot out of 100 in all."))
```

---

## Practice

```figure
(nu2-bars2 '(("Win" 80 20) ("Spr" 60 40) ("Sum" 30 90) ("Fall" 70 30)) 100 20 'warm 'cool)
(nu2-key 236 13 '(("Hot" warm) ("Cold" cool)))
```

```check
(choice
  (ask "A grouped bar chart has no key. What is the problem?")
  (right "You cannot tell which bar in each group is which set of data")
  (wrong "You cannot read the values"
    "The scale still gives the values. Without a key, you just do not know which bar stands for what.")
  (wrong "Nothing; the key is only decoration"
    "The key is what tells the bars in each group apart. Without it, the chart cannot be read.")
  (hint "What does a key do?"))
```

```check
(number
  (ask "What is the mean number of cold drinks per day over the 4 seasons?")
  (answer 45) (unit "drinks") (from "(20 + 40 + 90 + 30) / 4")
  (wrong-if 180 "180 is the total. Divide by the 4 seasons.")
  (hint "Cold: 20, 40, 90, 30."))
```

In a grouped bar chart, use the key to tell the bars apart, then compare within each group or follow one pattern across the groups.
