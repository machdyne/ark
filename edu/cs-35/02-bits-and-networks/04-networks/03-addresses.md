# Addresses

```lesson
(objective "Say that every device on the Internet has an IP address, and that each packet carries the address it goes to and the one it comes from.")
(standards "1B-NI-04")
(minutes 20)
(keywords "IP address")
```

Every packet carries an address, so the network knows where to take
it.

A letter in the mail needs an address on it. A packet does too. Every
computer, phone or tablet on the Internet has an address made of
numbers, called its **IP address**.

Many IP addresses are written as 4 numbers with dots between them, like
this: 198.51.100.20. Each of the 4 numbers fits in one byte, so it is
from 0 to 255.

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Communication: IP: Addresses and Routing")
(source "RFC 791, Internet Protocol (Information Sciences Institute, 1981), section 3.1: Internet Header Format (32-bit source and destination addresses)")
```

```check
(choice
  (ask "Which of these could be an IP address?")
  (right "10.0.0.255")
  (wrong "198.51.100.300"
    "Each of the 4 numbers fits in one byte, from 0 to 255. 300 is too big for a byte.")
  (wrong "198.51.100"
    "That has only 3 numbers. This kind of IP address has 4 numbers, with dots between them.")
  (hint "Look for 4 numbers, each from 0 to 255."))
```

---

## What a packet carries

Each packet carries some information at the front, before its piece of the
message:

- **to**: the IP address it is going to;
- **from**: the IP address it comes from;
- **number**: which piece of the message it is.

```figure
(define (row y label val)
  (text 50 y label 'body 'bold)
  (text 130 y val 'body))
(frame 30 30 260 170 'ink 2)
(line 30 130 290 130 'ink 1.5)
(row 60 "to" "203.0.113.7")
(row 85 "from" "198.51.100.20")
(row 110 "number" "2 of 5")
(text 160 170 "GRANDMA" 'centre 'big 'bold)
(text 290 225 "the piece of the message" 'right 'small)
(text 290 20 "a packet" 'right 'small)
```

```sources
(source "RFC 791, Internet Protocol (1981), section 3.1: Internet Header Format")
(source "Timeless Computing (Zeitlos docs, tc.md), Communication: Transport: TCP and UDP (numbering)")
```

```check
(choice
  (ask "Why does a packet carry the address it comes from?")
  (right "So the answer can be sent back to it")
  (wrong "So the packet can find its way to where it is going"
    "The way there uses the to address. The from address says where an answer should go back to.")
  (wrong "It does not need it"
    "Without a from address, the computer at the end would not know where to send its answer.")
  (hint "Think of a letter. Why do you write your own address on it too?"))
```

---

## Worked example

```example
(example
  (problem "Ana's tablet has the IP address 198.51.100.20. It sends a packet to a computer with the address 203.0.113.7. What are the packet's to and from?")
  (step "The packet goes to the other computer: to 203.0.113.7.")
  (step "It comes from Ana's tablet: from 198.51.100.20.")
  (answer "To 203.0.113.7, from 198.51.100.20."))
```

```example
(example
  (problem "The computer at 203.0.113.7 sends an answer back to Ana's tablet. What are the answer's to and from?")
  (step "The answer goes back to Ana's tablet.")
  (step (choice (ask "So the answer's to address is ...")
    (right "198.51.100.20")
    (wrong "203.0.113.7" "That is the computer that sends the answer. It goes in from, not to.")))
  (answer "To 198.51.100.20, from 203.0.113.7: the two addresses swap places."))
```

---

## Practice

```check
(number
  (ask "This kind of IP address has 4 numbers, each one byte. How many bits is that?")
  (answer 32) (from "4 * 8")
  (wrong-if 4 "4 is the number of bytes. Each byte is 8 bits.")
  (wrong-if 12 "That adds 4 and 8. There are 4 bytes of 8 bits each, so multiply.")
  (hint "4 bytes, 8 bits in each."))
```

---

```check
(choice
  (ask "A packet has no to address. What goes wrong?")
  (right "The network does not know where to take it")
  (wrong "Nothing: the network can guess"
    "The network cannot guess where a packet should go. It reads the to address on every packet.")
  (wrong "The message is cut into more packets"
    "How many packets there are does not depend on the address. Without a to address, no one knows where to take this one.")
  (hint "What is the to address for?"))
```

So: every device on the Internet has an IP address, and each packet
carries the address it goes to and the address it comes from.
