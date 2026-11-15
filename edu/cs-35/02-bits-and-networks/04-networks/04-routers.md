# Routers

```lesson
(objective "Follow a packet hop by hop through routers, and say that packets of one message can take different routes.")
(standards "1B-NI-04")
(minutes 20)
(keywords "router")
```

Routers pass a packet along, one step at a time, until it arrives.

A **router** is a computer whose job is to pass packets on. It reads a
packet's to address. Then it sends the packet one step closer to that
address: to the next router, or at the end to the computer itself.
Each step is called a **hop**.

The box that joins your home network to the Internet is often a router
too.

Watch the packet go from computer A to computer B.

```figure
(still (cs2-net #f))
(define p (cs2-hop '(0 1 2 4 5) (modulo (seconds) 6)))
(cs2-packet (car p) (cadr p) "1")
(caption "A to B: through R1, R2 and R4")
```

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Communication: IP: Addresses and Routing")
```

```check
(number
  (ask "In the figure, the packet goes A, R1, R2, R4, B. How many routers does it pass through?")
  (answer 3)
  (wrong-if 5 "A and B are the computers at the two ends, not routers. Count only the R's.")
  (wrong-if 4 "The routers are R1, R2 and R4. R3 is not on this route.")
  (hint "Count R1, R2, R4."))
```

---

## No router knows the whole way

No router knows the whole route from A to B. Each one only knows which
way to send a packet next. Step by step, the packet gets closer, until
it arrives.

That is why the Internet can keep growing. Nobody needs a map of all of
it.

```check
(choice
  (ask "Which router knows the whole way from A to B?")
  (right "None: each one only knows the next step")
  (wrong "R1, the first router"
    "R1 only sends the packet to the next router. That router then chooses the next step, and so on.")
  (wrong "A big router that runs the whole Internet"
    "There is no such router. Each router passes packets one step on, and that is enough.")
  (hint "What does each router choose?"))
```

---

## Another way round

Sometimes a router is down, or very busy. Then packets can go another
way. Click the box to put R2 out of action.

```figure
(still
  (cs2-net #f)
  (if (toggle 'down "R2 is down")
      (begin (line 140 35 180 75 'ink 4) (line 180 35 140 75 'ink 4))))
(define route (if (toggle 'down "R2 is down") '(0 1 3 4 5) '(0 1 2 4 5)))
(define p (cs2-hop route (modulo (seconds) 6)))
(cs2-packet (car p) (cadr p) "2")
```

```check
(choice
  (ask "R2 is down. Which way does the packet go from A to B?")
  (right "A, R1, R3, R4, B")
  (wrong "A, R1, R2, R4, B"
    "R2 is down, so it cannot pass packets on. R1 sends the packet the other way, through R3.")
  (wrong "It cannot get to B"
    "There is another way round, through R3. That is one reason networks have many links.")
  (hint "Find a way from R1 to R4 that does not use R2."))
```

---

## Worked example

```example
(example
  (problem "Packet 1 of a message goes A, R1, R2, R4, B. Then R2 gets busy. Packet 2 goes A, R1, R3, R4, B. Do they share any routers?")
  (step "Packet 1 uses R1, R2 and R4.")
  (step "Packet 2 uses R1, R3 and R4.")
  (answer "Yes: both use R1 and R4. They take different ways in the middle."))
```

```example
(example
  (problem "A packet goes A, R1, R3, R2, R4, B. How many hops is that?")
  (step "A to R1 is 1 hop. R1 to R3 is 2. R3 to R2 is 3.")
  (step (number (ask "Count on: R2 to R4, then R4 to B. How many hops in all?")
    (answer 5) (from "3 + 2")
    (wrong-if 4 "Count the steps between places, all of them: there are 6 places, so 5 hops.")))
  (answer "5 hops."))
```

---

## Practice

```check
(choice
  (ask "Two packets of one message leave A. Can they take different routes to B?")
  (right "Yes: each packet finds its own way")
  (wrong "No: all packets of a message must use the same route"
    "Each router chooses the next step for each packet. When a router is busy or down, the next packet can go another way.")
  (hint "Think of what happened when R2 was down."))
```

---

```check
(number
  (ask "A packet goes A, R1, R2, R4, B. How many hops is that?")
  (answer 4) (from "5 - 1")
  (wrong-if 5 "5 is the number of places. A hop goes between two places, so there is one hop fewer.")
  (wrong-if 3 "3 is the number of routers. Count the steps: A to R1, R1 to R2, R2 to R4, R4 to B.")
  (hint "Count the steps between places."))
```

So: routers pass each packet one hop at a time towards its address,
and packets of one message can take different ways.
