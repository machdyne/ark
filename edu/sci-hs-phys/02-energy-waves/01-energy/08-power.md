# Power

```lesson
(objective "Compute power as energy transferred per second, in watts and horsepower.")
(standards "HS-PS3-1" "HSN-Q.A.1")
(minutes 20)
(keywords "power (in physics)" "watt" "horsepower")
```

You learn to compute how fast energy is transferred, and to give it in
two units.

Two students run up the same stairs. They do the same work against
gravity, but one gets there in half the time. The difference is power.
**Power** is the rate at which energy is transferred, or work is done:

$$ P = W / t $$

Power is measured in **watts** (W). One watt is one joule per second:
$1 W = 1 J/s$. A kilowatt (kW) is 1,000 W.

```sources
(source "OpenStax, College Physics 2e (2022), section 7.7, Power")
(source "NIST Special Publication 811, Guide for the Use of the International System of Units (2008), table 3 and appendix B")
```

```check
(number
  (ask "A motor does 600 J of work in 3.0 s. What is its power, in watts?")
  (answer 200) (unit "W") (from "600 / 3.0")
  (wrong-if 1800 "That is work times time. Power is work per second: divide by the time.")
  (hint "P = W / t."))
```

---

## Same work, different power

Two people of 50 kg each climb 3.0 m of stairs. Each does
$m g h = 50 * 9.8 * 3.0 = 1470$ J of work against gravity. A takes
2.0 s; B takes 6.0 s.

```figure
(still
  (wv-surface 20 300 200 #f)
  (line 80 80 80 200 'grey 1)
  (line 220 80 220 200 'grey 1)
  (line 60 80 100 80 'ink 1)
  (line 200 80 240 80 'ink 1)
  (text 10 84 "3.0 m" 'small)
  (text 80 222 "A: 2.0 s, 735 W" 'centre 'small)
  (text 220 222 "B: 6.0 s, 245 W" 'centre 'small))
(define t (modulo (seconds) 8))
(define ya (* 3 (min 1 (/ t 2))))
(define yb (* 3 (min 1 (/ t 6))))
(wv-block 66 (- 172 (* 40 ya)) 28 28 'warm "A")
(wv-block 206 (- 172 (* 40 yb)) 28 28 'cool "B")
(text 160 40 (string-append (fmt (min t 6) 1) " s") 'centre 'body)
(caption "Real time; each block is a 50 kg climber.")
```

$$ P_A = 1470 / 2.0 = 735 $$

$$ P_B = 1470 / 6.0 = 245 $$

Both powers are in watts.

```check
(choice
  (ask "A and B do the same work. Why is A's power greater?")
  (right "A transfers the same energy in less time")
  (wrong "A does more work, because A climbs faster"
    "The work is m g h for both: the same mass and height. Speed changes the time, not the work.")
  (wrong "A uses more force, so A does more work"
    "At a steady speed, each climber's lift equals their weight, the same for both. The work is the same; only the time differs.")
  (hint "P = W / t. Which of W and t differs?"))
```

---

## Horsepower

Engines in the US are often rated in **horsepower** (hp), a unit from
the age of steam engines. One horsepower is about 746 W. A climber who
lifts 50 kg up 3.0 m in 2.0 s works at about 1 hp.

$$ 1 hp = 746 W $$

```check
(number
  (ask "A car engine is rated at 150 hp. What is that in kilowatts, to the nearest kilowatt?")
  (answer 112) (within 0.5) (unit "kW") (from "150 * 746 / 1000")
  (wrong-if 0.2 "That divides 150 by 746. A horsepower is bigger than a watt, so there are more watts than horsepower: multiply.")
  (wrong-if 111900 "That is the power in watts. A kilowatt is 1,000 W.")
  (hint "150 * 746 W, then divide by 1,000."))
```

---

## Power and speed

When a force $F$ moves something at a steady speed $v$, it does
$F d$ of work, and the distance is $d = v t$. So $P = F d / t = F v$.

```example
(example
  (problem "An elevator lifts 800 kg at a steady 2.0 m/s. What power does its motor deliver?")
  (step "At a steady speed, the lifting force equals the weight: F = 800 * 9.8 = 7,840 N.")
  (step "P = F v = 7,840 * 2.0 = 15,680 W.")
  (step "In horsepower: 15,680 / 746 = 21 hp.")
  (answer "about 15.7 kW, or about 21 hp"))
```

```example
(example
  (problem "A 1,000 W winch lifts a 200 kg load 10 m. How long does it take?")
  (step "Work: W = m g h = 200 * 9.8 * 10 = 19,600 J.")
  (step (number (ask "t = W / P, in seconds, to the nearest tenth?") (answer 19.6) (within 0.05) (unit "s") (from "19600 / 1000")
    (wrong-if 0.05 "That is P / W, upside down. Time is energy divided by power: 19,600 J / 1,000 J/s.")
    (hint "19,600 J at 1,000 J each second.")))
  (answer "19.6 s"))
```

---

## Practice

```check
(number
  (ask "A 60 W lamp runs for 1 minute. How much energy does it use, in joules?")
  (answer 3600) (unit "J") (from "60 * 60")
  (wrong-if 60 "60 J is the energy in 1 second. A minute has 60 seconds.")
  (wrong-if 1 "That is 60 / 60. Energy is power times time: E = P t.")
  (hint "E = P t, with t in seconds."))
```

```check
(choice
  (ask "Which has the greater power?")
  (right "A 500 N push moving a cart at 3 m/s" (true "500 * 3 > 1000 * 1"))
  (wrong "A 1,000 N push moving a cart at 1 m/s" (false "1000 * 1 > 500 * 3")
    "The larger force is not enough. Power is force times speed: 1,000 * 1 = 1,000 W, but 500 * 3 = 1,500 W.")
  (hint "P = F v for each."))
```

So: power is energy transferred per second, $P = W / t = F v$, in
watts, and 1 hp is about 746 W.
