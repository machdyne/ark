# Networks

```lesson
(objective "Say what a network is, and that the Internet is a network of networks.")
(standards "1B-NI-04")
(minutes 15)
(keywords "network" "Internet")
```

Computers that are joined together can send messages to each other.

A **network** is a group of computers joined together so they can send
messages to each other. Phones, tablets and printers can be part of a
network too.

They can be joined by wires, or without wires, by radio. Often one box
joins them all. A home can have a small network. So can a school.

```figure
(define (dev x y s)
  (rect (- x 32) (- y 16) 64 32 'paper)
  (frame (- x 32) (- y 16) 64 32 'ink 2)
  (text x (+ y 5) s 'centre 'small 'bold))
(line 70 60 160 115 'ink 2)
(line 250 60 160 115 'ink 2)
(line 70 170 160 115 'ink 2)
(line 250 170 160 115 'ink 2)
(rect 115 100 90 30 'paper)
(frame 115 100 90 30 'ink 2)
(text 160 119 "joins them" 'centre 'small)
(dev 70 60 "laptop")
(dev 250 60 "tablet")
(dev 70 170 "phone")
(dev 250 170 "printer")
(caption "a small network at home")
```

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Communication")
```

```check
(choice
  (ask "Which of these is a network?")
  (right "The computers in a school, joined so they can send each other messages")
  (wrong "One laptop on a table, not joined to anything"
    "A network needs computers joined together. One laptop on its own has nothing to send messages to.")
  (wrong "A box of new computers, still packed"
    "Computers side by side are not a network yet. They must be joined, by wires or by radio, to send messages.")
  (hint "A network is about being joined."))
```

---

## A network of networks

Networks can be joined to other networks. The **Internet** is many
networks all over the world, joined together. It is a network of
networks.

Your home network joins the Internet. So does your school's network. So
a message from your home can reach a school far away.

```figure
(define (net cx cy s)
  (ring cx cy 38 'ink 1.5)
  (circle (- cx 14) (- cy 8) 7 'ink)
  (circle (+ cx 14) (- cy 8) 7 'ink)
  (circle cx (+ cy 12) 7 'ink)
  (text cx (+ cy 54) s 'centre 'small 'bold))
(line 70 70 250 70 'grey 3)
(line 70 70 160 160 'grey 3)
(line 250 70 160 160 'grey 3)
(net 70 70 "home")
(net 250 70 "school")
(net 160 160 "library")
(caption "three networks, joined: a tiny piece of the Internet")
```

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Communication: IP: Addresses and Routing")
```

```check
(choice
  (ask "What is the Internet?")
  (right "Many networks around the world, joined together")
  (wrong "One very big computer"
    "No one computer holds the Internet. It is made of many networks, each with many computers, all joined.")
  (wrong "The wires inside one computer"
    "Those wires are inside a single computer. The Internet joins whole networks to each other, all over the world.")
  (hint "Think of the figure: networks joined to networks."))
```

---

## How messages travel

A message travels as bits. On a wire, the bits travel as electricity.
In a glass cable, they travel as flashes of light. Without wires, they
travel as radio waves.

```check
(choice
  (ask "A tablet sends a message with no wire at all. How do the bits travel?")
  (right "As radio waves")
  (wrong "They cannot: a message always needs a wire"
    "Networks can work without wires. The bits travel through the air as radio waves.")
  (wrong "As sound"
    "We cannot hear a tablet send a message. Without wires, the bits travel as radio waves.")
  (hint "How does a network work without wires?"))
```

---

## Practice

```check
(choice
  (several)
  (ask "Which of these can be part of a network? Choose every one.")
  (right "A laptop")
  (right "A phone")
  (right "A printer")
  (wrong "A paper book"
    "A paper book cannot send or receive messages, so it cannot join a network.")
  (hint "Which of them can send or receive messages?"))
```

---

```check
(choice
  (ask "Kim's home network and her grandpa's home network are in two different countries. How can Kim send him a message?")
  (right "Both networks are joined to the Internet")
  (wrong "She cannot: networks only work in one house"
    "One network may be in one house, but the Internet joins networks all over the world.")
  (wrong "Her computer must be joined by its own wire to his"
    "No wire goes all the way from Kim to her grandpa. Her message goes through the Internet, from network to network.")
  (hint "What joins networks all over the world?"))
```

So: a network joins computers so they can send messages, and the
Internet joins networks all over the world.
