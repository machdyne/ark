# Thermal equilibrium

```lesson
(objective "Predict the final temperature when a hot and a cold object reach thermal equilibrium, and state the second law of thermodynamics.")
(standards "HS-PS3-4")
(minutes 25)
(keywords "thermal equilibrium" "second law of thermodynamics")
```

You learn to predict the temperature that a hot and a cold object end
up at when they touch, and the law that says which way heat flows.

Drop a hot iron nail into cold water. Heat flows from the nail into the
water: the nail cools and the water warms. The flow stops when both are
at the same temperature. Objects at the same temperature, with no net
heat flowing between them, are in **thermal equilibrium**.

If no heat leaves or enters the pair, as in a well-closed foam cup, the
heat the hot object loses equals the heat the cold object gains:

$$ m_1 c_1 (T_1 - T) = m_2 c_2 (T - T_2) $$

with $T$ the final temperature, $T_1$ the hot start and $T_2$ the cold
start.

```sources
(source "OpenStax, College Physics 2e (2022), section 13.1, Temperature (the zeroth law), and section 14.2, Temperature Change and Heat Capacity")
```

```check
(choice
  (ask "A hot spoon sits in cool water in a closed foam cup. When does heat stop flowing between them?")
  (right "When the spoon and the water reach the same temperature")
  (wrong "When the spoon has given away all its thermal energy"
    "The spoon keeps plenty of thermal energy: its particles still move. Heat stops flowing once there is no temperature difference.")
  (wrong "When the water reaches the spoon's starting temperature"
    "The spoon cools while the water warms, so they meet in between, not at the spoon's first temperature.")
  (hint "Heat flows because of a temperature difference."))
```

---

## Watching it happen

An object at 90 °C goes into 1.0 kg of water at 20 °C. Choose the
object. The final temperature follows from heat lost = heat gained.

```figure
(define k (choice 'obj '("0.5 kg water" "0.5 kg iron") "Hot object"))
(define mc (if (= k 0) (* 0.5 4186) (* 0.5 452)))
(define tf (/ (+ (* mc 90) (* 4186 20)) (+ mc 4186)))
(define (ty t) (- 200 (* 1.6 t)))
(define (curve t0 role)
  (let loop ((i 40) (pts '()))
    (if (< i 0) (path pts role 2)
        (loop (- i 1) (cons (+ 50 (* 6 i)) (cons (ty (+ tf (* (- t0 tf) (exp (/ i -8))))) pts))))))
(line 50 40 50 200 'ink 1.5)
(line 50 200 300 200 'ink 1.5)
(for-range 0 6 (lambda (j) (line 46 (ty (* 20 j)) 50 (ty (* 20 j)) 'ink 1)
                           (text 42 (+ (ty (* 20 j)) 3) (fmt (* 20 j) 0) 'right 'tiny)))
(text 56 40 "T (°C)" 'small)
(text 300 214 "time" 'right 'small)
(curve 90 'warm)
(curve 20 'cool)
(line 50 (ty tf) 300 (ty tf) 'grey 1)
(text 296 (- (ty tf) 5) (string-append (fmt tf 1) " °C") 'right 'small 'bold)
(text 110 (ty 84) "hot object" 'small)
(text 110 (ty 10) "water" 'small)
(caption "The shape of the curves is typical; the end is exact.")
```

```check
(choice
  (ask "Why does the iron change the water's temperature so much less than the same mass of hot water does?")
  (right "Iron's specific heat capacity is much smaller, so it gives up less heat as it cools")
  (wrong "Iron is a metal, so it keeps its heat inside"
    "Iron passes heat very easily. It simply has less to give: cooling 1 kg of iron by 1 K releases only 452 J, against 4,186 J for water.")
  (wrong "Iron is denser, so it cools faster"
    "The masses are the same, 0.5 kg. What differs is the heat each kilogram gives per kelvin, the specific heat capacity.")
  (hint "Heat given up = m c (T_1 - T). What differs between iron and water?"))
```

---

## Worked example

```example
(example
  (problem "You mix 0.20 kg of water at 80 °C with 0.30 kg of water at 20 °C in a foam cup. What is the final temperature?")
  (step "Heat lost by the hot water = heat gained by the cool water. Both are water, so c cancels.")
  (step "0.20 (80 - T) = 0.30 (T - 20), so 16 - 0.20 T = 0.30 T - 6.")
  (step "22 = 0.50 T, so T = 44 °C.")
  (answer "44 °C"))
```

```example
(example
  (problem "You mix 1.0 kg of water at 60 °C with 3.0 kg of water at 20 °C. What is the final temperature?")
  (step "1.0 (60 - T) = 3.0 (T - 20), so 60 - T = 3.0 T - 60.")
  (step (number (ask "T, in °C?") (answer 30) (unit "°C") (from "(1.0 * 60 + 3.0 * 20) / (1.0 + 3.0)")
    (wrong-if 40 "40 °C is halfway, which would be right for equal masses. There is 3 times as much cool water, so the result is nearer 20 °C.")
    (hint "120 = 4.0 T.")))
  (answer "30 °C"))
```

---

## The second law of thermodynamics

Nobody has ever seen a cold drink warm a hot room by itself, or heat
leave a cup of cool water to make it colder while the room gets
warmer. This is a law of nature, the
**second law of thermodynamics**: heat never flows by itself from a
colder object to a hotter one.

A refrigerator does move energy from its cold inside to the warmer
kitchen, but not by itself: it needs a supply of work to do so.

```sources
(source "OpenStax, College Physics 2e (2022), section 15.3, Introduction to the Second Law of Thermodynamics: Heat Engines and Their Efficiency")
```

```check
(choice
  (ask "Which would break the second law of thermodynamics?")
  (right "An ice cube in warm lemonade gets colder while the lemonade warms up")
  (wrong "A refrigerator cools its inside while the kitchen warms"
    "A refrigerator moves energy from cold to hot, but only by using work from outside. The law forbids heat doing this by itself.")
  (wrong "A hot pan cools down on a counter"
    "Heat flowing from the hot pan to the cooler room is exactly what the law allows.")
  (hint "The law is about heat flowing by itself from colder to hotter."))
```

---

## Practice

```check
(number
  (ask "A 0.50 kg iron block at 100 °C is dropped into 1.0 kg of water at 20 °C in a foam box. What is the final temperature, to the nearest tenth of a degree? Iron: 452 J/(kg K). Water: 4,186 J/(kg K).")
  (answer 24.1) (within 0.05) (unit "°C") (from "(0.50 * 452 * 100 + 1.0 * 4186 * 20) / (0.50 * 452 + 1.0 * 4186)")
  (wrong-if 46.7 "That treats iron like water, weighting by mass alone. Each must be weighted by m c, and iron's c is much smaller.")
  (wrong-if 60 "60 °C is halfway between the two. Heat lost = heat gained, weighted by m c, puts the result much nearer the water's temperature.")
  (hint "Heat lost by iron: 0.50 * 452 * (100 - T). Heat gained by water: 1.0 * 4,186 * (T - 20).")
  (hint "T = (226 * 100 + 4,186 * 20) / (226 + 4,186)."))
```

```check
(choice
  (ask "A hot drink and a cold drink sit on a table for many hours. What happens?")
  (right "Both end at the temperature of the room")
  (wrong "The cold drink stays cold, because it has no heat to lose"
    "Objects do not hold heat. The room is warmer than the cold drink, so heat flows into it until they match.")
  (wrong "They swap temperatures"
    "Heat flows only from hotter to colder, and stops when the temperatures are equal. Each drink comes to the room's temperature.")
  (hint "Each drink and the room move toward thermal equilibrium."))
```

So: heat flows from hot to cold until thermal equilibrium, heat lost
equals heat gained, and by the second law it never flows the other way
by itself.
