# Equations of motion

```lesson
(objective "Use the equations for constant acceleration to find a missing quantity.")
(standards "HSA-CED.A.4")
(minutes 30)
(keywords "constant acceleration" "kinematic equations")
```

You can predict where a steadily speeding or slowing object will be, and how fast it will go, with three equations.

Many motions have **constant acceleration**: the velocity changes by the same amount every second, so the velocity-time graph is a straight line. This cart starts from rest at x = 0 with $a = 2$ m/s².

```figure
(still
  (number-line 20 300 150 0 16 1 2)
  (caption "Shown in real time; it repeats every 5 s"))
(define t (min 4 (mc-mod (seconds) 5)))
(mc-cart (nl-x (* t t)) 146 'cool)
(text 160 50 (string-append "t = " (fmt t 1) " s   v = " (fmt (* 2 t) 1) " m/s") 'centre 'small 'bold)
(text 160 76 (string-append "x = " (fmt (* t t) 1) " m") 'centre 'small 'bold)
```

```check
(choice
  (ask "Watch the cart. Which is true of its motion?")
  (right "Its velocity grows by the same amount each second")
  (wrong "It covers the same distance each second"
    "Equal distances each second would mean a steady velocity. This cart covers 1 m, then 3 m, then 5 m, then 7 m: more each second.")
  (wrong "Its acceleration grows each second"
    "The acceleration stays 2 m/s² the whole time. It is the velocity that grows, by 2 m/s each second.")
  (hint "Look at v: 0, 2, 4, 6, 8 m/s."))
```

---

## The three equations

For constant acceleration, three equations connect the starting position $x_0$, the starting velocity $v_0$, the acceleration $a$, the time $t$, and the final position $x$ and velocity $v$. They are called the **kinematic equations**:

$$ v = v_0 + a t $$

$$ x = x_0 + v_0 t + 1/2 a t^2 $$

$$ v^2 = v_0^2 + 2 a (x - x_0) $$

The first comes from the meaning of acceleration. The second is the area under the velocity-time line: a rectangle $v_0 t$ and a triangle $1/2 a t^2$. The third joins the first two with $t$ left out.

```sources
(source "OpenStax, Physics (high school), 2020, chapter 3.2: Representing acceleration with equations and graphs")
```

```check
(number
  (ask "A car starts from rest and accelerates at 3 m/s² for 5 s. How fast is it going then?")
  (answer 15) (unit "m/s") (from "0 + 3 * 5")
  (wrong-if 37.5 "That is how far it goes, from the second equation. The velocity comes from v = v_0 + a t.")
  (wrong-if 8 "That adds 3 and 5. Velocity grows by 3 m/s each second for 5 s: multiply.")
  (hint "v = v_0 + a t, with v_0 = 0."))
```

---

## Choosing an equation

List what you know and what you want. Then choose the equation that holds your unknown and leaves out the quantity you neither know nor need.

- No final velocity? Use $x = x_0 + v_0 t + 1/2 a t^2$.
- No time? Use $v^2 = v_0^2 + 2 a (x - x_0)$.
- No position? Use $v = v_0 + a t$.

```check
(choice
  (ask "You know a car's starting velocity and its acceleration as it brakes to a stop. You want its stopping distance, and you do not know the time. Which equation do you use?")
  (right "v^2 = v_0^2 + 2 a (x - x_0)")
  (wrong "v = v_0 + a t"
    "That equation needs the time, which you do not know.")
  (wrong "x = x_0 + v_0 t + 1/2 a t^2"
    "That equation needs the time too. Only the third leaves t out.")
  (hint "Which equation has no t in it?"))
```

---

## Stopping distance

A car at 20 m/s brakes with $a = -5$ m/s². How far does it go before it stops? With $v = 0$:

$$ 0 = 20^2 + 2 (-5) d $$

so $d = 400/10 = 40$ m. Double the speed and the stopping distance is 4 times as long, because the speed is squared.

```check
(number
  (ask "The same car, braking at -5 m/s², starts at 10 m/s. How far does it go before it stops?")
  (answer 10) (unit "m") (from "10^2 / (2 * 5)")
  (wrong-if 20 "Half the speed does not give half the distance. The distance goes with the speed squared: 100 / 10 = 10 m.")
  (wrong-if 1 "That divides 10 by 10. Square the speed first: 10² = 100.")
  (hint "0 = 10^2 + 2(-5)d.")
  (hint "d = 100 / 10."))
```

---

## A worked example

```example
(example
  (problem "A plane starts from rest and accelerates at 4 m/s² until it reaches 80 m/s. How long does that take?")
  (step "Known: v_0 = 0, a = 4 m/s², v = 80 m/s. Unknown: t.")
  (step "Use v = v_0 + a t: 80 = 0 + 4 t.")
  (step "t = 80 / 4 = 20 s.")
  (answer "20 s"))
```

Now you finish one.

```check
(number
  (ask "How long a runway does that plane use? It starts from rest at 4 m/s² for 20 s.")
  (answer 800) (unit "m") (from "0.5 * 4 * 20^2")
  (wrong-if 1600 "That is 80 m/s x 20 s, as if the plane went 80 m/s the whole time. It started from rest.")
  (wrong-if 40 "That is 1/2 x 4 x 20, without squaring the time.")
  (hint "x = 1/2 a t^2.")
  (hint "1/2 x 4 x 400."))
```

---

## Practice

```check
(number
  (ask "A cyclist at 6 m/s speeds up at 0.5 m/s² for 8 s. What distance does she cover? Give the answer in meters.")
  (answer 64) (unit "m") (from "6 * 8 + 0.5 * 0.5 * 8^2")
  (wrong-if 48 "That is only v_0 t. She also speeds up, adding 1/2 a t^2 = 16 m.")
  (hint "x = v_0 t + 1/2 a t^2."))
```

```check
(number
  (ask "A train at 30 m/s brakes at -1.5 m/s². How long does it take to stop?")
  (answer 20) (unit "s") (from "30 / 1.5")
  (wrong-if 45 "That multiplies. From 0 = 30 + (-1.5) t, t = 30 / 1.5.")
  (hint "Use v = v_0 + a t with v = 0."))
```

```check
(number
  (ask "A ball rolls down a slope from rest and reaches 6 m/s after rolling 9 m. What is its acceleration?")
  (answer 2) (unit "m/s²") (from "6^2 / (2 * 9)")
  (wrong-if 0.67 "That is 6 / 9. With no time given, use v^2 = v_0^2 + 2 a d: 36 = 18 a.")
  (hint "There is no time, so use the third equation.")
  (hint "36 = 2 a x 9."))
```

---

So with constant acceleration, the three kinematic equations link position, velocity, acceleration and time, and you choose the one that holds what you know and what you want.
