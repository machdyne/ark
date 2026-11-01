# Converting units

```lesson
(objective "Convert between units, metric and US customary, by multiplying by conversion factors and keeping track of the units.")
(standards "HSN-Q.A.1")
(minutes 25)
(keywords "conversion factor" "dimensional analysis")
```

You can change a measurement from one unit to another by multiplying by a fraction that equals 1.

Since 1959, the inch has been defined as exactly 2.54 cm. The two scales below are drawn to the same scale. Move the slider and read the same length in both units.

```figure
(define n (slider 'n 0 12 4 "Length (in)" 0.5))
(define (xc c) (+ 20 (* 9.3333 c)))
(line 14 80 302 80 'ink 1.5)
(for-range 0 31 (lambda (c) (line (xc c) 80 (xc c) (if (= 0 (modulo c 5)) 70 75) 'ink 1)))
(for-range 0 7 (lambda (k) (text (xc (* 5 k)) 64 (* 5 k) 'centre 'tiny)))
(text 14 48 "centimeters" 'small)
(line 14 150 308 150 'ink 1.5)
(for-range 0 13 (lambda (i) (line (xc (* 2.54 i)) 150 (xc (* 2.54 i)) 160 'ink 1)
  (text (xc (* 2.54 i)) 174 i 'centre 'tiny)))
(text 14 194 "inches" 'small)
(line (xc (* 2.54 n)) 80 (xc (* 2.54 n)) 150 'warm 1.5)
(circle (xc (* 2.54 n)) 80 4 'ink)
(circle (xc (* 2.54 n)) 150 4 'ink)
(text 160 116 (string-append (fmt n 1) " in = " (fmt (* 2.54 n) 2) " cm") 'centre 'body 'bold)
(caption "1 in = 2.54 cm exactly")
```

```sources
(source "NIST Special Publication 811, Guide for the Use of the International System of Units (2008), Appendix B: the inch is exactly 2.54 cm")
```

```check
(number
  (ask "Use the slider. How many centimeters is 10 in?")
  (answer 25.4) (unit "cm") (from "10 * 2.54")
  (wrong-if 3.94 "That divides 10 by 2.54. An inch is longer than a centimeter, so 10 in is more than 10 cm.")
  (wrong-if 12.54 "That adds 2.54. Each of the 10 inches is 2.54 cm, so multiply.")
  (hint "Each inch is 2.54 cm."))
```

---

## A fraction equal to 1

Because 1 in and 2.54 cm are the same length, the fraction $(2.54 cm)/(1 in)$ is equal to 1. So is its upside-down form.

A **conversion factor** is such a fraction: two equal quantities in different units, one over the other. Multiplying by it changes the units but not the length.

$$ 12 in * (2.54 cm)/(1 in) = 30.48 cm $$

The unit "in" is on the top and the bottom, so it cancels, as a number would.

```check
(choice
  (ask "Which of these is a conversion factor equal to 1?")
  (right "1 ft over 0.3048 m")
  (wrong "1 ft over 1 m"
    "A foot and a meter are not the same length, so this fraction is not 1. The top and bottom must be equal lengths: 1 ft = 0.3048 m.")
  (wrong "12 in over 1 cm"
    "12 in is a foot, much more than 1 cm. The two parts of a conversion factor must be the same quantity.")
  (hint "The top and the bottom must be the same length."))
```

---

## Which way up?

Put the unit you want on top, and the unit you have on the bottom, so the old unit cancels.

To change 50 cm into inches, use 1 in over 2.54 cm:

$$ 50 cm * (1 in)/(2.54 cm) = 19.7 in $$

(to the nearest tenth). Keeping track of units like this, and checking that they cancel to the unit you want, is called **dimensional analysis**.

```check
(choice
  (ask "You want to change 300 m into feet. Which conversion factor do you multiply by?")
  (right "1 ft over 0.3048 m")
  (wrong "0.3048 m over 1 ft"
    "With meters on top, you get 300 x 0.3048 m²/ft: the meters do not cancel. Put the unit you have, m, on the bottom.")
  (hint "The unit you have, meters, must be on the bottom to cancel."))
```

```check
(number
  (ask "Change 300 m into feet. Round to the nearest foot.")
  (answer 984) (within 0.6) (unit "ft") (from "300 / 0.3048")
  (wrong-if 91.44 "That multiplies by 0.3048, which turns feet into meters. A foot is shorter than a meter, so there are more feet than meters.")
  (hint "Divide by 0.3048, since each foot is only 0.3048 m."))
```

---

## Two factors in a row

A speed has two units, so it can need two factors. Change 72 km/h into meters per second:

72 km/h x (1,000 m / 1 km) x (1 h / 3,600 s) = 20 m/s

The km cancels with the first factor and the h with the second. Only m on top and s on the bottom are left.

```check
(number
  (ask "Change 90 km/h into meters per second.")
  (answer 25) (unit "m/s") (from "90 * 1000 / 3600")
  (wrong-if 90000 "That changes kilometers to meters but leaves hours. One hour is 3,600 s, so divide by 3,600 too.")
  (wrong-if 1.5 "That changes hours to minutes only. Change km to m (times 1,000) and hours to seconds (divide by 3,600).")
  (hint "Multiply by 1,000 m per km.")
  (hint "Then divide by 3,600 s per hour."))
```

---

## A worked example

```example
(example
  (problem "A car drives at 60 mph (miles per hour). How fast is that in meters per second, to the nearest whole number? Use 1 mi = 1,609 m.")
  (step "Miles to meters: 60 mi/h x 1,609 m/mi = 96,540 m/h.")
  (step "Hours to seconds: 96,540 m/h x 1 h/3,600 s = 26.8 m/s.")
  (step "Check the units: mi and h cancel, leaving m/s.")
  (answer "About 27 m/s"))
```

Now you finish one.

```check
(number
  (ask "A highway sign says 65 mph. How fast is that in m/s? Use 1 mi = 1,609 m, and round to the nearest whole number.")
  (answer 29) (within 0.6) (unit "m/s") (from "65 * 1609 / 3600")
  (wrong-if 104585 "That is meters per hour. Divide by 3,600 s per hour to get meters per second.")
  (wrong-if 105 "That is about the speed in km/h. To get m/s, change miles to meters and hours to seconds.")
  (hint "65 x 1,609 gives meters per hour.")
  (hint "Then divide by 3,600."))
```

---

## Practice

```check
(number
  (ask "A marathon is 26.2 mi. How many kilometers is that? Use 1 mi = 1.609 km, and round to the nearest tenth.")
  (answer 42.2) (within 0.06) (unit "km") (from "26.2 * 1.609")
  (wrong-if 16.3 "That divides by 1.609. A mile is longer than a kilometer, so a marathon is more kilometers than miles.")
  (hint "Multiply by 1.609 km per mile."))
```

```check
(number
  (ask "A doorway is 80 in tall. How tall is it in meters? Round to the nearest hundredth.")
  (answer 2.03) (within 0.006) (unit "m") (from "80 * 2.54 / 100")
  (wrong-if 203.2 "That is the height in centimeters. Divide by 100 to get meters.")
  (wrong-if 31.5 "That divides by 2.54. An inch is 2.54 cm, so multiply.")
  (hint "First change inches to centimeters.")
  (hint "80 x 2.54 = 203.2 cm. Now change cm to m."))
```

```check
(choice
  (ask "A student finds a time as distance x speed, and the units come out as m²/s. What does that tell you?")
  (right "The formula is wrong: a time must come out in seconds")
  (wrong "Nothing: units do not matter if the numbers are right"
    "Units follow the same rules as the numbers. If they come out as m²/s, the numbers were combined the wrong way. Time is distance divided by speed.")
  (wrong "The answer just needs a conversion factor"
    "A conversion factor changes one unit of time into another, but m²/s is not a time at all. The calculation itself is wrong.")
  (hint "What unit should a time have?"))
```

---

So a conversion factor is a fraction equal to 1, and dimensional analysis puts it the right way up so the old units cancel and the new ones remain.
