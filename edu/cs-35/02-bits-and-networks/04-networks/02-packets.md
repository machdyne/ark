# Packets

```lesson
(objective "Explain why a long message is cut into small packets before it is sent.")
(standards "1B-NI-04")
(minutes 20)
(keywords "packet")
```

A message on the Internet is cut into small pieces before it is sent.

A **packet** is one of those small pieces. The packets travel across
the network one by one. At the end, they are put back together into the
whole message.

Move the Size slider to put more or fewer letters in each packet.

```figure
(define msg "HELLO GRANDMA")
(define len (string-length msg))
(define n (slider 'n 2 6 3 "Size" 1))
(define np (ceiling (/ len n)))
(text 160 40 msg 'centre 'big 'bold)
(for-range 0 np
  (lambda (k)
    (let* ((a (* k n)) (b (min len (+ a n)))
           (col (modulo k 4)) (row (floor (/ k 4)))
           (x (+ 12 (* col 76))) (y (+ 70 (* row 46))))
      (frame x y 70 36 'ink 1.5)
      (text (+ x 6) (+ y 13) (fmt (+ k 1) 0) 'tiny)
      (text (+ x 35) (+ y 27) (substring msg a b) 'centre 'body 'bold))))
(caption (string-append (fmt len 0) " letters and spaces: " (fmt np 0) " packets"))
```

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Communication: Packets")
```

```check
(number
  (ask "A message has 12 letters. It is cut into packets of 3 letters each. How many packets is that?")
  (answer 4) (from "12 / 3")
  (wrong-if 3 "3 is the letters in each packet. Count the packets: 3, 6, 9, 12 letters.")
  (wrong-if 36 "That multiplies. The message is shared out into packets, so divide: 12 letters, 3 in each packet.")
  (hint "How many 3s make 12?"))
```

---

## Why cut it up?

Many computers share the same wires. They take turns to send.

Think of one huge message, like a long video. If it went in one piece,
everyone else would wait until it was done. In small packets, the turns
are short. Packets from many people can take turns on the same wire.

```check
(choice
  (ask "Why do small packets help when many computers share one wire?")
  (right "Each turn is short, so nobody waits for one huge message")
  (wrong "Small packets make the wire longer"
    "The wire stays the same. Packets help the computers share it, by taking short turns.")
  (wrong "Small packets need no electricity"
    "Every packet travels as bits, which need electricity, light or radio. Packets help by keeping each turn short.")
  (hint "Think of a line of people taking turns."))
```

---

## When something goes wrong

Sometimes a packet is lost or broken on the way. Then only that one
packet needs to be sent again, not the whole message.

```example
(example
  (problem "A photo is sent in 100 packets. Packet 37 is lost. What must be sent again?")
  (step "The other 99 packets arrived safely.")
  (step "Only the lost one is missing.")
  (answer "Only packet 37 is sent again."))
```

```example
(example
  (problem "A message is sent in 20 packets. Packets 4 and 9 are lost. How many packets must be sent again?")
  (step "18 packets arrived safely.")
  (step (number (ask "How many must be sent again?")
    (answer 2) (from "20 - 18")
    (wrong-if 20 "Only the lost packets must be sent again, not all 20.")))
  (answer "2 packets: 4 and 9."))
```

---

## Practice

```check
(number
  (ask "A message has 20 letters. Each packet holds 5 letters. How many packets are needed?")
  (answer 4) (from "20 / 5")
  (wrong-if 5 "5 is the letters in each packet. Count how many 5s make 20.")
  (wrong-if 100 "That multiplies. Share the 20 letters out, 5 in each packet.")
  (hint "5, 10, 15, 20: how many packets?"))
```

---

```check
(choice
  (ask "A long video is sent in one piece, not in packets. Part of it breaks on the way. What happens?")
  (right "The whole video must be sent again")
  (wrong "Only the broken part is sent again"
    "That is what packets allow. In one piece, there is no small part to send again, so the whole video goes again.")
  (wrong "Nothing: the video fixes itself"
    "Broken bits do not fix themselves. Something must be sent again: here, the whole video.")
  (hint "Without packets, what is the smallest thing that can be sent again?"))
```

So: a message is cut into small packets so that many computers can
share the wires, and only lost packets need to be sent again.
