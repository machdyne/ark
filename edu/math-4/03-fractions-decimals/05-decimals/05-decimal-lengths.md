# Decimal lengths

```lesson
(objective "Describe lengths as decimals of a meter, such as 62 centimeters = 0.62 meter.")
(standards "4.NF.C.6")
(minutes 20)
```

You can write a length in centimeters as a decimal of a meter.

1 meter is 100 centimeters. So 1 centimeter is $1/100$ of a meter, and
62 centimeters are $62/100$ of a meter:

$$ 62/100 = 0.62 $$

A ribbon 62 centimeters long is 0.62 meter long.

```figure
(define c (slider 'c 0 100 62 "Centimeters" 1))
(m4p3-meter 20 300 120 c 10 'warm)
(text 160 190 (string-append (fmt c 0) " cm = " (if (= c 100) "1.00" (string-append (if (< c 10) "0.0" "0.") (fmt c 0))) " m") 'centre 'big 'bold)
(caption "A meter stick: 100 centimeters")
```

```check
(text
  (ask "A pencil is 15 centimeters long. Write its length as a decimal of a meter.")
  (accept "0.15") (accept ".15") (accept "0.15 m") (accept "0.15 meter") (accept ".15 m")
  (accept ".15 meter") (accept "0.15 meters") (accept ".15 meters")
  (wrong-if "15" "15 meters would be very long. 15 centimeters is 15 hundredths of a meter.")
  (wrong-if "1.5" "1.5 meters is 150 centimeters. 15 centimeters is 0.15 meter.")
  (hint "1 centimeter is 1/100 meter."))
```

---

## Tenths of a meter

10 centimeters are $10/100 = 1/10$ of a meter: 0.1 meter. So 30
centimeters are 0.3 meter, which is also 0.30 meter.

```check
(number
  (ask "0.4 meter is how many centimeters?")
  (answer 40) (unit "centimeters") (from "0.4 * 100")
  (wrong-if 4 "0.4 is 4 tenths of a meter. Each tenth is 10 centimeters: 40.")
  (hint "0.4 = 40/100."))
```

---

## More than 1 meter

A board is 1 meter and 25 centimeters long. That is $1 25/100$ meters,
or 1.25 meters. 125 centimeters = 1.25 meters.

```check
(text
  (ask "A rope is 2 meters and 8 centimeters long. Write its length in meters as a decimal.")
  (accept "2.08") (accept "2.08 m") (accept "2.08 meters") (accept "2.08 meter")
  (wrong-if "2.8" "2.8 meters is 2 meters and 80 centimeters. 8 centimeters are 8 hundredths: 2.08.")
  (wrong-if "208" "208 is the length in centimeters. In meters, put the decimal point after the 2.")
  (hint "8 centimeters = 0.08 meter."))
```

---

## Worked example

```example
(example
  (problem "A desk is 75 centimeters tall. Write its height in meters.")
  (step "75 centimeters = 75/100 meter.")
  (step "75/100 = 0.75.")
  (answer "0.75 meter."))
```

```example
(example
  (problem "A jump is 1.6 meters. How many centimeters is that?")
  (step "1 meter = 100 centimeters.")
  (step (number (ask "0.6 meter = ? centimeters")
    (answer 60) (from "0.6 * 100")
    (wrong-if 6 "0.6 is 6 tenths. Each tenth of a meter is 10 centimeters.")))
  (answer "100 + 60 = 160 centimeters."))
```

---

## Practice

```check
(text
  (ask "A leaf is 9 centimeters long. Write its length as a decimal of a meter.")
  (accept "0.09") (accept ".09") (accept "0.09 m") (accept ".09 m")
  (accept "0.09 meter") (accept ".09 meter")
  (wrong-if "0.9" "0.9 meter is 90 centimeters. 9 centimeters is 0.09 meter.")
  (hint "9/100 meter."))
```

```check
(number
  (ask "0.55 meter is how many centimeters?")
  (answer 55) (unit "centimeters") (from "0.55 * 100")
  (wrong-if 5.5 "0.55 = 55/100 meter, and each hundredth is 1 centimeter.")
  (hint "0.55 = 55/100."))
```

---

```check
(choice
  (ask "Which is the same length as 1.5 meters?")
  (right "150 centimeters" (true "1.5 * 100 = 150"))
  (wrong "15 centimeters" (false "1.5 * 100 = 15")
    "15 centimeters is less than 1 meter. 1.5 meters is more than 1 meter.")
  (wrong "105 centimeters" (false "1.5 * 100 = 105")
    "105 centimeters is 1.05 meters. 0.5 meter is 50 centimeters.")
  (hint "1 meter and 5 tenths of a meter."))
```

So: centimeters are hundredths of a meter, so 62 centimeters = 0.62
meter.
