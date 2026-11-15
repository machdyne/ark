# Putting it back together

```lesson
(objective "Explain how numbered packets are put back in order at the end, and what happens when one is lost.")
(standards "1B-NI-04")
(minutes 20)
```

The computer at the end puts the packets back in order by their
numbers.

Packets of one message can take different routes. Some ways are faster
than others. So the packets can arrive in a different order from the
one they were sent in.

That is why each packet carries its number. The computer at the end
sorts the packets by number. Then the message reads right again.

Choose how to show the packets.

```figure
(define c (choice 'c '("as they arrive" "in order") "Show"))
(define words '("MEET" "ME" "AT" "THE" "PARK"))
(define arrive '(3 1 5 2 4))
(for-range 0 5
  (lambda (k)
    (let* ((num (if (= c 0) (list-ref arrive k) (+ k 1)))
           (x (+ 12 (* k 60))))
      (frame x 80 56 50 'ink 1.5)
      (text (+ x 6) 94 (fmt num 0) 'small 'bold)
      (text (+ x 28) 118 (list-ref words (- num 1)) 'centre 'body 'bold))))
(text 160 175 (if (= c 0) "AT MEET PARK ME THE" "MEET ME AT THE PARK") 'centre 'big 'bold)
(caption "the small number on each packet says where it goes")
```

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Communication: Transport: TCP and UDP")
(source "RFC 9293, Transmission Control Protocol (IETF, 2022): sequence numbers and retransmission")
```

```check
(text
  (ask "Three packets arrive: 2 FOR, 3 LUNCH, 1 TIME. Put them in order. What is the message?")
  (accept "TIME FOR LUNCH")
  (wrong-if "FOR LUNCH TIME" "That is the order they arrived in. Sort them by their numbers: 1 first.")
  (hint "Packet 1 comes first. Which word is on packet 1?"))
```

---

## A lost packet

Sometimes a packet is lost on the way. For web pages, email and most
messages, the computer at the end tells the sender which packets came.
The sender then sends the missing ones again.

```check
(number
  (ask "A message is sent in 5 packets. Packets 1, 2, 4 and 5 arrive. Which packet must be sent again?")
  (answer 3)
  (wrong-if 5 "Packet 5 arrived. Look for the number that is not in the list.")
  (wrong-if 4 "4 is how many packets arrived. The question asks which one is missing.")
  (hint "Count 1, 2, 3, 4, 5. Which one did not arrive?"))
```

---

## Worked example

```example
(example
  (problem "Four packets arrive: 4 PARK, 2 IS, 1 THIS, 3 THE. Put them in order.")
  (step "Packet 1 is THIS. Packet 2 is IS.")
  (step "Packet 3 is THE. Packet 4 is PARK.")
  (answer "THIS IS THE PARK."))
```

```example
(example
  (problem "Four packets arrive: 3 THE, 1 I, 4 BOOK, 2 HAVE. Put them in order.")
  (step "Packet 1 is I. Packet 2 is HAVE.")
  (step (text (ask "Add packets 3 and 4. What is the whole message?")
    (accept "I HAVE THE BOOK")
    (wrong-if "THE I BOOK HAVE" "That is the order they arrived in. Sort by the numbers: 1, 2, 3, 4.")))
  (answer "I HAVE THE BOOK."))
```

---

## Practice

```check
(choice
  (ask "Why must each packet carry a number?")
  (right "Packets can arrive out of order, and the numbers put them back")
  (wrong "So the routers know where to send it"
    "Routers use the to address for that. The number tells the computer at the end where the packet goes in the message.")
  (wrong "To count how many people sent it"
    "One sender sends all the packets of a message. The number says which piece of the message this packet is.")
  (hint "What can happen when packets take different routes?"))
```

---

```check
(choice
  (ask "Which tells a message's whole trip, in the right order?")
  (right "Cut into packets, routers pass them on, put back in order at the end")
  (wrong "Put in order, cut into packets, routers pass them on"
    "The message is whole when it starts. It is cut into packets first, and put back in order only at the end.")
  (wrong "Routers pass the whole message on, then it is cut into packets"
    "Routers pass packets, not whole messages. The message is cut up before it is sent.")
  (hint "What is the first thing that happens to the message?"))
```

So: packets carry numbers, the computer at the end sorts them, and a
lost packet is sent again.
