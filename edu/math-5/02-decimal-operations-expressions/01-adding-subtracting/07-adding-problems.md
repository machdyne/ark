# Adding and subtracting problems

```lesson
(objective "Solve multi-step word problems that add and subtract decimals to hundredths, and check them with the inverse operation.")
(standards "5.NBT.B.7")
(minutes 25)
```

You can solve a problem with several steps by doing one step at a time,
then check it with the inverse operation.

A ribbon is 3.5 meters long. Ella cuts off 1.25 meters, then 0.8
meter. How much is left?

- Step 1: she cuts off 1.25 + 0.8 = 2.05 meters in all.
- Step 2: 3.5 - 2.05 = 1.45 meters are left.

```figure
(rect 20 90 (* 280 (/ 1.25 3.5)) 40 'warm)
(rect (+ 20 (* 280 (/ 1.25 3.5))) 90 (* 280 (/ 0.8 3.5)) 40 'cool)
(frame 20 90 280 40 'ink 1.5)
(line (+ 20 (* 280 (/ 1.25 3.5))) 90 (+ 20 (* 280 (/ 1.25 3.5))) 130 'ink 1)
(line (+ 20 (* 280 (/ 2.05 3.5))) 90 (+ 20 (* 280 (/ 2.05 3.5))) 130 'ink 1)
(label 70 150 "1.25" 'small)
(label 160 150 "0.8" 'small)
(label 245 115 "?" 'big 'bold)
(path (list 20 84 20 76 300 76 300 84) 'ink 1)
(label 160 70 "3.5 m" 'small 'bold)
(caption "Drawn to scale: 3.5 m in all")
```

```check
(text
  (ask "A jug holds 2 liters of juice. Max pours 0.75 liter, then 0.6 liter. How many liters are left?")
  (accept "0.65") (accept ".65") (accept "0.650")
  (true "2 - 0.75 - 0.6 = 0.65")
  (wrong-if "1.35" "1.35 liters is what Max poured. The question asks what is left: 2 - 1.35.")
  (wrong-if "1.19" "0.6 is 6 tenths, not 6 hundredths. 0.75 + 0.60 = 1.35.")
  (hint "Step 1: 0.75 + 0.6 = ?")
  (hint "Step 2: 2 - 1.35 = ?"))
```

---

## Check with the inverse operation

Adding and subtracting undo each other: each is the inverse operation
of the other. To check 3.5 - 2.05 = 1.45, add back:

$$ 1.45 + 2.05 = 3.5 $$

You get the number you started with, so the difference is right.

```check
(choice
  (ask "Which sum checks 6.2 - 1.75 = 4.45?")
  (right "4.45 + 1.75" (true "4.45 + 1.75 = 6.2"))
  (wrong "6.2 + 1.75"
    "That adds to the number you started with. To undo taking away 1.75, add 1.75 to the answer, 4.45.")
  (wrong "4.45 + 6.2"
    "The answer plus the starting number is not a check. Add the answer and the number taken away.")
  (hint "Answer + the number taken away = the start?"))
```

---

## Which step first?

Read the whole problem. Find what is asked. Then plan the steps.

Leo has 15.40 dollars. He earns 6.75 dollars, then spends 9.30 dollars.
How much does he have now?

Add what he earns: 15.40 + 6.75 = 22.15. Take away what he spends:
22.15 - 9.30 = 12.85.

```check
(text
  (ask "A path is 4.6 kilometers long. Ivy walks 1.85 kilometers, rests, then walks 2.3 kilometers. How many kilometers are still ahead?")
  (accept "0.45") (accept ".45") (accept "0.450")
  (true "4.6 - (1.85 + 2.3) = 0.45")
  (wrong-if "4.15" "4.15 kilometers is how far she walked. What is still ahead is 4.6 - 4.15.")
  (wrong-if "2.52" "2.3 is 2 ones and 3 tenths. Line up the decimal points: 1.85 + 2.30 = 4.15.")
  (hint "She walks 1.85 + 2.3 in all.")
  (hint "4.60 - 4.15 = ?"))
```

---

## Worked example

```example
(example
  (problem "A plant was 12.5 centimeters tall. It grew 3.75 centimeters in May and 4.6 centimeters in June. How tall is it now?")
  (step "Add both months: 3.75 + 4.6 = 8.35 centimeters.")
  (step "Add to the start: 12.5 + 8.35 = 20.85 centimeters.")
  (step "Check: 20.85 - 8.35 = 12.5.")
  (answer "20.85 centimeters"))
```

```example
(example
  (problem "Nadia ran 400 meters in 92.4 seconds on Monday and in 89.85 seconds on Friday. How much faster was she on Friday?")
  (step "Faster means less time. Find the difference: 92.4 - 89.85.")
  (step (text (ask "92.40 - 89.85 = ?")
    (accept "2.55") (accept "2.550")
    (true "92.4 - 89.85 = 2.55")
    (wrong-if "17.45" "That takes the smaller digit from the bigger in each place. Regroup: 92.40 is 91 ones, 13 tenths, 10 hundredths.")))
  (step "Check: 89.85 + 2.55 = 92.4.")
  (answer "2.55 seconds faster"))
```

---

## Practice

```check
(text
  (ask "A bag of apples has a mass of 1.35 kilograms. A bag of pears is 0.48 kilogram lighter. What is the mass of both bags together, in kilograms?")
  (accept "2.22") (accept "2.220")
  (true "1.35 + (1.35 - 0.48) = 2.22")
  (wrong-if "0.87" "0.87 kilogram is the pears alone. Add the apples: 1.35 + 0.87.")
  (wrong-if "1.83" "The pears are lighter, so take 0.48 away to find them: 1.35 - 0.48 = 0.87. Then add both bags.")
  (hint "Pears: 1.35 - 0.48 = 0.87.")
  (hint "Both: 1.35 + 0.87 = ?"))
```

```check
(choice
  (ask "Ali says 7.3 - 2.86 = 5.56. Check with the inverse operation. Is he right?")
  (right "No: 5.56 + 2.86 = 8.42, not 7.3" (true "5.56 + 2.86 = 8.42") (false "7.3 - 2.86 = 5.56"))
  (wrong "Yes: 7.3 - 5.56 = 2.86"
    "Check that subtraction too: 7.30 - 5.56 = 1.74, not 2.86. The right difference is 4.44.")
  (wrong "Yes: the answer has 2 decimal places, like 2.86"
    "The number of places does not show that a difference is right. Add back: 5.56 + 2.86 = 8.42, not 7.3.")
  (hint "Add the answer and the number taken away."))
```

---

```check
(text
  (ask "Mo has 50 dollars. He buys shoes for 32.99 dollars and socks for 5.49 dollars. How much money does he have left, in dollars?")
  (accept "11.52") (accept "$11.52") (accept "11.520")
  (true "50 - (32.99 + 5.49) = 11.52")
  (wrong-if "38.48" "38.48 dollars is what he spent. What is left is 50 - 38.48.")
  (wrong-if "12.52" "50.00 regroups to 49 ones, 9 tenths, 10 hundredths. 49 - 38 = 11.")
  (hint "He spends 32.99 + 5.49 = 38.48 dollars.")
  (hint "50.00 - 38.48 = ?"))
```

So: plan the steps, do one at a time, and check each with the inverse operation.
