# Weight

```lesson
(objective "Compute weight as W = mg, tell weight from mass, and convert between newtons and pounds.")
(standards "HS-PS2-1" "HSN-Q.A.1")
(minutes 25)
(keywords "weight")
```

You can find how hard gravity pulls on an object, and tell that pull apart from the object's mass.

An object's **weight** is the force of gravity on it. Near a planet's surface, it is the object's mass times the acceleration due to gravity there, and it points down:

$$ W = m g $$

On Earth, a 1 kg mass has a weight of 1 x 9.8 = 9.8 N. By Newton's second law, that weight is exactly what gives a falling object its acceleration $g$.

```check
(number
  (ask "What is the weight on Earth of a 5 kg bag of flour?")
  (answer 49) (unit "N") (from "5 * 9.8")
  (wrong-if 5 "5 kg is the mass. The weight is the force of gravity: m g = 5 x 9.8 N.")
  (wrong-if 0.51 "That divides by g. Weight is mass times g.")
  (hint "W = m g."))
```

---

## Mass is not weight

Mass is how much matter an object has, measured in kilograms. It is the same everywhere. Weight is a force, in newtons, and it depends on where you are. On the Moon, $g$ is only 1.62 m/s², so everything weighs about 1/6 as much as on Earth, but has the same mass.

```figure
(define m (slider 'm 10 100 60 "Mass (kg)" 5))
(define p (choice 'p '("Earth" "Moon" "Mars") "Where"))
(define g (list-ref '(9.8 1.62 3.71) p))
(define W (* m g))
(mc-fbd 90 70 0.12 (list (list 270 W "")))
(text 180 70 (string-append "mass: " (fmt m 0) " kg") 'small)
(text 180 94 (string-append "g: " (fmt g 2) " m/s²") 'small)
(text 180 130 (string-append "weight: " (fmt W 0) " N") 'small 'bold)
(text 180 154 (string-append "= " (fmt (/ W 4.45) 0) " lb") 'small 'bold)
(caption "The weight arrow is to scale: 1 unit = about 8 N")
```

```sources
(source "NASA Goddard Space Flight Center, Moon Fact Sheet and Mars Fact Sheet (NSSDCA): surface gravity 1.62 and 3.71 m/s²")
```

```check
(choice
  (ask "An astronaut with a mass of 80 kg goes from Earth to the Moon. What happens?")
  (right "Her weight falls to about 1/6; her mass stays 80 kg")
  (wrong "Her mass and weight both fall to about 1/6"
    "Mass is the amount of matter, and she has the same body on the Moon. Only the pull of gravity, her weight, is smaller.")
  (wrong "Her weight stays the same; her mass falls"
    "It is the other way round. g is smaller on the Moon, so W = m g is smaller, while m does not change.")
  (hint "Which one depends on g?"))
```

---

## Pounds and newtons

In US customary units, weight is measured in pounds (lb), a unit of force.

- 1 lb = 4.45 N, so a weight in newtons divided by 4.45 is the weight in pounds.
- On Earth, 1 kg weighs 9.8 N, which is about 2.2 lb.

```sources
(source "NIST Special Publication 811 (2008), Appendix B: 1 pound-force = 4.448222 N")
```

```check
(number
  (ask "A student's weight on Earth is 600 N. What is that in pounds? Round to the nearest pound.")
  (answer 135) (within 0.6) (unit "lb") (from "600 / 4.45")
  (wrong-if 2670 "That multiplies by 4.45. A pound is more than a newton, so the number of pounds is smaller.")
  (hint "Divide by 4.45."))
```

---

## From weight back to mass

If you know a weight, divide by $g$ to find the mass: $m = W / g$.

```check
(number
  (ask "A crate weighs 1,960 N on Earth. What is its mass?")
  (answer 200) (unit "kg") (from "1960 / 9.8")
  (wrong-if 19208 "That multiplies by g. To go from weight to mass, divide: m = W / g.")
  (wrong-if 1960 "1,960 N is a force. The mass, in kilograms, is W / g.")
  (hint "m = W / g."))
```

---

## A worked example

```example
(example
  (problem "A rover has a mass of 900 kg. What is its weight on Earth and on Mars, where g = 3.71 m/s²?")
  (step "On Earth: W = 900 x 9.8 = 8,820 N.")
  (step "On Mars: W = 900 x 3.71 = 3,339 N.")
  (step "Its mass is 900 kg on both.")
  (answer "About 8,800 N on Earth and 3,300 N on Mars"))
```

Now you finish one.

```check
(number
  (ask "What does a 12 kg dog weigh on the Moon, where g = 1.62 m/s²? Round to the nearest tenth.")
  (answer 19.4) (within 0.06) (unit "N") (from "12 * 1.62")
  (wrong-if 117.6 "That is its weight on Earth, with g = 9.8 m/s². Use the Moon's g.")
  (wrong-if 12 "12 kg is the dog's mass. Its weight is m g.")
  (hint "W = m g with g = 1.62 m/s²."))
```

---

## Practice

```check
(number
  (ask "A bag weighs 22 lb. What is its weight in newtons? Round to the nearest newton.")
  (answer 98) (within 0.6) (unit "N") (from "22 * 4.45")
  (wrong-if 4.9 "That divides by 4.45. Each pound is 4.45 N, so multiply.")
  (hint "Multiply by 4.45."))
```

```check
(choice
  (ask "A bathroom scale shows 50 kg. Strictly, what does a scale measure?")
  (right "A force, how hard you press on it, which it turns into kilograms using Earth's g")
  (wrong "Your mass directly, the same on any planet"
    "A scale feels how hard you press on it, which depends on g. On the Moon the same scale would show about 8 kg.")
  (hint "On the Moon, would you press on the scale as hard?"))
```

```check
(number
  (ask "On Earth, a 3 kg rock and a 0.3 kg rock are both dropped. The larger has 10 times the weight. Ignoring the air, how do their accelerations compare? Give the ratio of the larger's to the smaller's.")
  (answer 1) (from "(3 * 9.8 / 3) / (0.3 * 9.8 / 0.3)")
  (wrong-if 10 "Ten times the weight pulls on ten times the mass. a = W / m = g for both, so the ratio is 1.")
  (hint "a = W / m = m g / m."))
```

---

So weight is the force of gravity, W = m g, in newtons or pounds, and it changes from place to place while mass does not.
