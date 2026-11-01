# Safer collisions

```lesson
(objective "Design a way to reduce the force in a collision by making it last longer, as airbags, helmets and crumple zones do.")
(standards "HS-PS2-3")
(minutes 25)
(keywords "crumple zone")
```

You learn why making a collision last longer makes its force smaller,
and use that to judge and design ways to protect people.

In a crash, a moving person must come to a stop. Their change in
momentum, $Delta p$, is fixed by their mass and speed. But the impulse
$F Delta t = Delta p$ can come from a large force for a short time, or
a small force for a long time:

$$ F = (Delta p) / (Delta t) $$

Make the stop last 10 times longer, and the average force on the
person is 10 times smaller.

```sources
(source "OpenStax, College Physics 2e (2022), section 8.2, Impulse")
```

```check
(choice
  (ask "Why does landing on a thick mat hurt less than landing on a hard floor, from the same height?")
  (right "The mat makes the stop last longer, so the force is smaller")
  (wrong "The mat makes your change in momentum smaller"
    "You land at the same speed and end at rest either way, so Delta p is the same. The mat stretches out the time.")
  (wrong "The mat takes away your momentum, so there is no force"
    "Your momentum still has to go to zero, and that takes a force. The mat makes the force smaller by making it last longer.")
  (hint "Delta p is the same. What else is in F = Delta p / Delta t?"))
```

---

## Stretching the stop

A 70 kg person moving at 15 m/s (about 34 mph) is brought to rest, so
$Delta p = 70 * 15 = 1050$ kg m/s. Change how long the stop takes. The
shaded area, the impulse, stays the same.

```figure
(define dt (slider 'dt 0.02 0.5 0.1 "Stop time (s)" 0.02))
(define F (/ 1050 dt))
(define Fk (/ F 1000))
(graph 60 30 230 150 0 0.5 0 60)
(graph-axes 0.1 10 "t (s)" "F (kN)")
(rect (gx 0) (gy (min Fk 60)) (- (gx dt) (gx 0)) (- (gy 0) (gy (min Fk 60))) 'warm)
(frame (gx 0) (gy (min Fk 60)) (- (gx dt) (gx 0)) (- (gy 0) (gy (min Fk 60))) 'ink 1)
(if (> Fk 60) (text (+ (gx dt) 4) 44 "off the scale" 'small))
(text 160 208 (string-append "average force = " (fmt F 0) " N") 'centre 'small 'bold)
(text 160 226 (string-append "about " (fmt (/ F 686) 0) " times the person's weight") 'centre 'small)
```

```check
(number
  (ask "The stop takes 0.15 s. What is the average force on the person, in newtons?")
  (answer 7000) (unit "N") (from "1050 / 0.15")
  (wrong-if 157.5 "That is Delta p times Delta t. The force is Delta p divided by the time.")
  (hint "F = 1,050 / 0.15."))
```

---

## How it is done

Engineers stretch out the stop in many ways:

- A car's **crumple zone** is a part at its front or back built to crush in a crash. As it crushes, the car stops over a longer time and distance, and the people inside feel a smaller force.
- An airbag fills in a crash, and the person sinks into it. The head stops over a longer time, and the force is spread over a larger area.
- A helmet's foam liner crushes when the helmet hits something, so the head stops more slowly.

```check
(choice
  (ask "Why are cars built to crumple at the front, instead of being as rigid as possible?")
  (right "Crumpling makes the crash last longer, which lowers the force on the people inside")
  (wrong "A rigid car would have more momentum"
    "The car's momentum depends on its mass and speed, not on how stiff it is. Stiffness changes how long the stop takes.")
  (wrong "Crumpling makes the car's change in momentum smaller"
    "The car goes from its speed to rest either way: Delta p is the same. What changes is Delta t, and so the force.")
  (hint "Think about F = Delta p / Delta t."))
```

---

## Designing padding

A team designs a pad to protect a 0.060 kg egg dropped at 5.0 m/s, so
$Delta p = 0.30$ kg m/s. Suppose their egg breaks if the average force
is over 25 N. Here are the stopping times from their simulation:

| Pad | stopping time |
|---|---|
| bare floor | 0.002 s |
| cardboard | 0.008 s |
| foam, 2 cm | 0.015 s |
| foam, 5 cm | 0.030 s |

```example
(example
  (problem "Which pads keep the force at 25 N or less?")
  (step "The force for each is 0.30 / Delta t.")
  (step "Floor: 150 N. Cardboard: 37.5 N. Foam 2 cm: 20 N. Foam 5 cm: 10 N.")
  (step "Only the two foam pads stay at 25 N or less.")
  (answer "Both foam pads; the thicker one leaves more margin"))
```

```check
(number
  (ask "What is the shortest stopping time that keeps the force at 25 N or less, in seconds?")
  (answer 0.012) (within 0.0001) (unit "s") (from "0.30 / 25")
  (wrong-if 7.5 "That is Delta p times the force. Rearrange F = Delta p / Delta t to Delta t = Delta p / F.")
  (wrong-if 83.3 "That is 25 / 0.30, upside down. Delta t = Delta p / F.")
  (hint "Delta t = Delta p / F.")
  (hint "0.30 / 25."))
```

---

## Practice

```check
(number
  (ask "A 0.50 kg ball moving at 20 m/s is caught. With stiff arms the catch takes 0.010 s. Pulling the hands back makes it take 0.10 s. What is the average force with the hands pulled back, in newtons?")
  (answer 100) (unit "N") (from "0.50 * 20 / 0.10")
  (wrong-if 1000 "That is the force for the 0.010 s catch. The longer catch, 0.10 s, gives a 10 times smaller force.")
  (hint "Delta p = 0.50 * 20 = 10 kg m/s.")
  (hint "F = 10 / 0.10."))
```

```check
(choice
  (ask "A designer wants a bike helmet to give a smaller force on the head in a fall. Which change helps most?")
  (right "A thicker liner that crushes more slowly")
  (wrong "A harder, stiffer liner"
    "A stiff liner stops the head in a shorter time, so the force is larger. The liner should give way, not resist.")
  (wrong "A heavier helmet"
    "Extra mass adds momentum to stop. The force goes down when the stop lasts longer, not when the helmet is heavier.")
  (hint "Which choice makes Delta t longer?"))
```

So: for the same change in momentum, a longer collision means a smaller
force, which is why crumple zones, airbags and helmets give way.
