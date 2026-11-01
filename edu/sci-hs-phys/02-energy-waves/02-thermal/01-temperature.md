# Temperature

```lesson
(objective "Explain temperature by the motion of particles, and convert between degrees Celsius, degrees Fahrenheit and kelvins.")
(standards "HS-PS3-2" "HSN-Q.A.1")
(minutes 25)
(keywords "kelvin" "absolute zero")
```

You learn what temperature tells you about the particles of matter, and
how to change a temperature from one scale to another.

Every object is made of particles, atoms and molecules, that are always
moving. In a gas they fly about and bounce off each other and the
walls; in a solid they jiggle about their places.

Temperature is a measure of the average kinetic energy of those
particles. For an ideal gas (a simple model of a gas whose particles
are tiny and only bounce off each other), the average kinetic energy is exactly in
proportion to the temperature measured from the lowest possible
temperature. The hotter the gas, the faster its particles move on
average. Move the slider.

```figure
(define T (slider 'temp 50 600 300 "Temp (K)" 50))
(define s (* 40 (sqrt (/ T 300))))
(define (tri u L) (- L (abs (- (modulo u (* 2 L)) L))))
(define pts '((10 20 30) (60 100 110) (120 40 200) (200 90 250) (30 120 80) (90 10 160)
              (150 130 300) (180 60 20) (220 20 140) (50 70 330) (110 110 50) (170 5 230)))
(frame 40 30 240 150 'ink 2)
(for-each (lambda (p)
            (let ((a (deg->rad (caddr p))))
              (circle (+ 46 (tri (+ (car p) (* s (seconds) (cos a))) 228))
                      (+ 36 (tri (+ (cadr p) (* s (seconds) (sin a))) 138)) 4 'warm)))
          pts)
(text 160 205 (string-append (fmt T 0) " K, " (fmt (- T 273.15) 0) " degrees C") 'centre 'body)
(caption "Particles of a gas, greatly slowed down.")
```

```sources
(source "OpenStax, College Physics 2e (2022), section 13.1, Temperature, and section 13.4, Kinetic Theory: Atomic and Molecular Explanation of Pressure and Temperature")
```

```check
(choice
  (ask "Gas A is at a higher temperature than gas B. What does that tell you about their particles?")
  (right "A's particles have more kinetic energy on average")
  (wrong "Every particle of A moves faster than every particle of B"
    "Temperature is about the average. In any gas some particles are slow and some fast; on average, A's are faster.")
  (wrong "A has more particles than B"
    "The number of particles does not set the temperature. A small, hot gas and a large, cool one can have any numbers of particles.")
  (hint "Temperature measures an average."))
```

---

## Celsius and Fahrenheit

Two everyday scales are set by water at sea level. On the Celsius
scale, water freezes at 0 °C and boils at 100 °C. On the Fahrenheit
scale, used in the US, it freezes at 32 °F and boils at 212 °F.

So 100 Celsius degrees span the same as 180 Fahrenheit degrees, and a
Celsius degree is $180/100 = 9/5$ as large:

$$ T_F = 9/5 T_C + 32 $$

$$ T_C = 5/9 (T_F - 32) $$

```sources
(source "NIST Special Publication 811, Guide for the Use of the International System of Units (2008), section 4.2.1.1 and appendix B")
```

```check
(number
  (ask "A room is at 20 °C. What is that in degrees Fahrenheit?")
  (answer 68) (unit "°F") (from "9/5 * 20 + 32")
  (wrong-if 36 "That is 9/5 * 20 without adding 32. Water freezes at 32 °F, so the Fahrenheit scale starts 32 higher.")
  (wrong-if 43.1 "That uses 5/9 instead of 9/5. A Celsius degree is bigger than a Fahrenheit degree, so you multiply by 9/5.")
  (hint "T_F = 9/5 * 20 + 32."))
```

---

## The kelvin and absolute zero

Cool a gas, and its particles slow down. There is a lowest possible
temperature, **absolute zero**, where the particles have the least
motion they can have. It is -273.15 °C, or -459.67 °F. Nothing can be
cooled below it, and nothing can be cooled all the way to it.

The SI unit of temperature is the **kelvin** (K). The kelvin scale
starts at absolute zero, and a kelvin is the same size as a Celsius
degree:

$$ T_K = T_C + 273.15 $$

Kelvins are written without "degrees": 300 K. They are never negative.

```figure
(define c (slider 'c -270 100 20 "Temp (°C)" 5))
(define (yy t) (- 205 (* 0.46 (+ t 273.15))))
(define (row t lab role)
  (line 20 (yy t) 300 (yy t) role 1)
  (text 70 (- (yy t) 3) (fmt (+ t 273.15) 0) 'centre 'small)
  (text 160 (- (yy t) 3) (fmt t 0) 'centre 'small)
  (text 250 (- (yy t) 3) (fmt (+ 32 (* 1.8 t)) 0) 'centre 'small)
  (text 300 (+ (yy t) 11) lab 'right 'tiny))
(text 70 18 "K" 'centre 'body 'bold)
(text 160 18 "°C" 'centre 'body 'bold)
(text 250 18 "°F" 'centre 'body 'bold)
(line 20 (yy c) 300 (yy c) 'warm 2.5)
(row -273.15 "absolute zero" 'ink)
(row 0 "water freezes" 'grey)
(row 100 "water boils" 'grey)
(text 160 230 (string-append "slider: " (fmt (+ c 273.15) 0) " K = " (fmt c 0) " °C = " (fmt (+ 32 (* 1.8 c)) 0) " °F") 'centre 'small 'bold)
```

```sources
(source "BIPM, The International System of Units (SI Brochure), 9th edition (2019), section 2.3.1, the kelvin")
```

```check
(number
  (ask "Air in a tire is at 300 K. What is that in degrees Celsius, to the nearest degree?")
  (answer 27) (within 0.5) (unit "°C") (from "300 - 273.15")
  (wrong-if 573 "That adds 273. Going from kelvins to degrees Celsius you subtract, since 0 °C is 273.15 K.")
  (hint "T_C = T_K - 273.15."))
```

---

## Worked example

```example
(example
  (problem "A summer day is 95 °F. What is that in °C and in K?")
  (step "T_C = 5/9 (95 - 32) = 5/9 * 63 = 35 °C.")
  (step "T_K = 35 + 273.15 = 308.15 K, about 308 K.")
  (answer "35 °C, about 308 K"))
```

```example
(example
  (problem "Liquid nitrogen boils at about 77 K. What is that in °C?")
  (step "T_C = T_K - 273.15.")
  (step (number (ask "T_C, to the nearest degree?") (answer -196) (within 0.5) (unit "°C") (from "77 - 273.15")
    (wrong-if 350 "That adds 273.15. From kelvins to Celsius, subtract.")
    (wrong-if 196 "77 is less than 273.15, so the answer is below zero: -196 °C.")
    (hint "77 - 273.15.")))
  (answer "about -196 °C"))
```

```sources
(source "CRC Handbook of Chemistry and Physics: nitrogen boils at 77.36 K at 1 atmosphere")
```

---

## Practice

```check
(number
  (ask "At what temperature, in degrees, do the Celsius and Fahrenheit scales give the same number?")
  (answer -40) (true "9/5 * (-40) + 32 = -40")
  (wrong-if 0 "0 °C is 32 °F, not 0 °F. Set T_F = T_C in T_F = 9/5 T_C + 32 and solve.")
  (wrong-if 32 "32 °F is 0 °C. Try solving T = 9/5 T + 32.")
  (hint "Solve T = 9/5 T + 32.")
  (hint "-4/5 T = 32."))
```

```check
(choice
  (ask "A gas is warmed from 100 K to 200 K. What happens to the average kinetic energy of its particles?")
  (right "It doubles" (true "200 / 100 = 2"))
  (wrong "It goes up by 100 times"
    "The temperature went up by 100 kelvins, not by a factor of 100. Measured from absolute zero, 200 K is twice 100 K.")
  (wrong "It cannot be said, because degrees Celsius are needed"
    "It is the kelvin scale, which starts at absolute zero, that the average kinetic energy is in proportion to.")
  (hint "For an ideal gas, the average kinetic energy is in proportion to the temperature in kelvins."))
```

So: temperature measures the average kinetic energy of the particles;
$T_K = T_C + 273.15$ and $T_F = 9/5 T_C + 32$, and nothing is colder
than absolute zero, 0 K.
