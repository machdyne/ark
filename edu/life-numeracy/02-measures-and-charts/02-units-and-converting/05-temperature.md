# Temperature

```lesson
(objective "Read temperatures in Celsius and Fahrenheit and convert between them.")
(minutes 25)
(keywords "degree (of temperature)" "Celsius" "Fahrenheit")
```

You can change a temperature from Celsius to Fahrenheit and back, and know about how warm it is in either.

Temperature is measured in **degrees**, written with a small circle: 20°. There are two kinds of degree in daily use:

- **Celsius** (°C), used in most countries: water freezes at 0°C and boils at 100°C.
- **Fahrenheit** (°F), used in the US: water freezes at 32°F and boils at 212°F.

(Boiling points are at sea level; water boils a little cooler high up.)

```sources
(source "NIST Special Publication 811, Guide for the Use of the International System of Units (2008), Appendix B.8")
```

```check
(choice
  (ask "A weather report says it is 0° outside, and water in puddles is freezing. Is it in Celsius or Fahrenheit?")
  (right "Celsius")
  (wrong "Fahrenheit"
    "In Fahrenheit, water freezes at 32°F. 0°F is much colder than freezing.")
  (hint "Where does water freeze in each?"))
```

---

## Side by side

From freezing to boiling is 100 degrees Celsius but 180 degrees Fahrenheit. So 1 degree C is 1.8 degrees F. Move the slider to see the same temperature in both.

```figure
(define c (slider 'c -20 100 20 "°C" 5))
(nu2-gauge 20 70 280 -20 100 20 5 c)
(text 160 26 (string-append (fmt c 0) " °C") 'centre 'body 'bold)
(nu2-gauge 20 170 280 -4 212 36 9 (+ 32 (* 1.8 c)))
(text 160 126 (string-append (fmt (+ 32 (* 1.8 c)) 0) " °F") 'centre 'body 'bold)
(caption "°F = 1.8 * °C + 32")
```

```check
(number
  (ask "Set the slider to 30 °C. What is it in °F?")
  (answer 86) (unit "°F") (from "1.8 * 30 + 32")
  (wrong-if 62 "That only adds 32. First multiply by 1.8, then add 32.")
  (hint "Multiply by 1.8, then add 32."))
```

---

## Celsius to Fahrenheit

$$ F = 1.8 * C + 32 $$

Multiply by 1.8 (which is 9/5), then add 32. A quick estimate: double it and add 30. For 20°C: 40 + 30 = 70, close to the true 68°F.

```check
(number
  (ask "An oven is set to 180°C. What is that in °F?")
  (answer 356) (unit "°F") (from "1.8 * 180 + 32")
  (wrong-if 212 "That only adds 32. Multiply by 1.8 first: 1.8 * 180 = 324, then add 32.")
  (wrong-if 381.6 "Add 32 after multiplying, not before: 1.8 * 180 + 32.")
  (hint "1.8 * 180 first.")
  (hint "Then add 32."))
```

---

## Fahrenheit to Celsius

Go back the other way: take away 32, then divide by 1.8.

$$ C = (F - 32) / 1.8 $$

```example
(example
  (problem "It is 77°F. What is that in °C?")
  (step "Take away 32: 77 - 32 = 45.")
  (step "Divide by 1.8: 45 ÷ 1.8 = 25.")
  (answer "77°F is 25°C."))
```

```check
(number
  (ask "Now you: a fridge is set to 41°F. What is that in °C?")
  (answer 5) (unit "°C") (from "(41 - 32) / 1.8")
  (wrong-if 22.8 "Take away 32 before dividing: 41 - 32 = 9, then 9 / 1.8 = 5.")
  (wrong-if 9 "That is the first step. Now divide by 1.8.")
  (hint "Take away 32 first."))
```

---

## Below zero

Temperatures can be negative numbers. -10°C is 10 degrees below freezing. In Fahrenheit that is 1.8 * (-10) + 32 = 14°F: still above 0°F.

```check
(number
  (ask "What is -5°C in °F?")
  (answer 23) (unit "°F") (from "1.8 * (-5) + 32")
  (wrong-if 41 "1.8 * (-5) is -9, not 9. Then -9 + 32 = 23.")
  (hint "1.8 * (-5) = -9.")
  (hint "Then add 32."))
```

---

## Practice

```check
(choice
  (ask "A friend abroad says it is 35° today. They use Celsius. What is the weather like?")
  (right "Hot: about 95°F" (true "1.8 * 35 + 32 = 95"))
  (wrong "Cold: just above freezing"
    "That would be true for 35°F. In Celsius, 35° is 1.8 * 35 + 32 = 95°F: a hot day.")
  (wrong "Mild: about 60°F"
    "Double and add 30 gives about 100°F. 35°C is hot, not mild.")
  (hint "Estimate: double it and add 30."))
```

```check
(number
  (ask "A bath is at 100°F. What is that in °C, to the nearest whole degree?")
  (answer 38) (within 0.5) (unit "°C") (from "(100 - 32) / 1.8")
  (wrong-if 56 "That divides by 1.8 but leaves out taking away 32. Take away 32 first: 68 / 1.8.")
  (hint "Take away 32, then divide by 1.8."))
```

To change °C to °F, multiply by 1.8 and add 32; to change °F to °C, take away 32 and divide by 1.8.
