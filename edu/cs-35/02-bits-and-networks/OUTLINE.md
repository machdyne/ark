# Outline: Bits and networks

Part `02-bits-and-networks` of `cs-35`, First Programs: 5 units, 22 lessons. This file has no number, so learn ignores it. Each lesson has exactly the file name, objective and standards below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears.

## Standards

CSTA K-12 Computer Science Standards (2017), level 1B. Only two 1B standards fit this part closely, and only those, with 1B-IC-21, are used:

- `1B-NI-04` -- Model how information is broken down into smaller pieces, transmitted as packets through multiple devices over networks and the Internet, and reassembled at the destination.
- `1B-NI-05` -- Discuss real-world cybersecurity problems and how personal information can be protected.
- `1B-IC-21` -- Use public domain or creative commons media, and refrain from copying or using material created by others without permission.

Bits, binary numbers and codes have no level 1B standard (CSTA puts representing data with encoding schemes at level 2, 2-DA-07), so units 01-03 carry no code. Being kind online has no 1B code either (it is 1A-IC-17 at level 1A), so that lesson carries none.

## Figures

Figure procedures go in `lib/cs2.scm` only, every name starting with `cs2-` (under 7 KB):

- `cs2-bit`, `cs2-bin` -- a bit of a number; a number as a string of binary digits
- `cs2-lamp`, `cs2-lamps` -- a lamp lit or off; a row of lamps showing the bits of a number, with 1 or 0 under each
- `cs2-places`, `cs2-sum` -- binary boxes with their place values (1, 2, 4, 8, 16 ...) above; the sum of the places that hold a 1
- `cs2-pixels`, `cs2-pixel-bits` -- a black-and-white picture drawn from rows of bits; the bits of each row beside it
- `cs2-net`, `cs2-hop`, `cs2-packet`, `cs2-xy` -- a small network of two computers and four routers; where a packet is along a route at a time; a packet drawn as a small card

Built-in procedures that suit this part: `label`, `caption`, `grid`, `bar-chart` (rarely), `number-line` (not needed). Moving packets use `(seconds)`; controls are `slider`, `toggle` and `choice`.

## Words

- Uses from part 1 (`01-programs`): the terms its OUTLINE.md lists as keywords -- algorithm, program, instruction, BASIC, line number, run, bug, debug, variable, value, input, user, loop, condition, pixel, coordinates, animation, comment -- and its statements (PRINT, INPUT, FOR ... NEXT with STEP, IF ... THEN, PLOT, LINE, BOX, CIRCLE, CLS), as known. A BASIC program in this part uses only these, and is run with the host BASIC before it is shown.
- Part 1 does not use "bit", "byte", "binary", "network", "Internet", "packet", "router", "address", "password" or "online", so this part teaches each where it first needs it.
- Everyday words, used without being keywords: on, off, number, digit, letter, message, picture, screen, computer, phone, tablet, secret, code (as in a secret code: defined in bold in `03-codes/01-secret-codes.md`, but not listed as a keyword, because part 1 may say "code" for a program's lines).
- Say "the numbers we usually write" or "our everyday numbers", not "decimal": in grade 4 math, a decimal is a number like 0.5.
- No hexadecimal, no negative numbers, no Unicode or UTF-8, no TCP, DNS or Wi-Fi by name: they belong to `cs-ms` and the high-school courses.
- Staying safe online is general and true: no scare stories, no statistics, no named apps or sites as dangers.
- Grade 3-4 words: sentences of 15 words or fewer, one new term a step, "you", present tense, numbers as digits, US spelling.
- This is the last part: no later part's words to avoid.

## 01-bits/ -- Bits

Say what a bit is and how many patterns a group of bits can make.

1. `01-on-or-off.md` -- Say what a bit is: one of two states, written 1 or 0.  
   Standards: none. Keywords: "bit".
2. `02-two-bits.md` -- List every pattern that 2 bits and 3 bits can make.  
   Standards: none. Keywords: (none new).
3. `03-doubling.md` -- Explain that each extra bit doubles the number of patterns, up to 5 bits and 32 patterns.  
   Standards: none. Keywords: (none new).
4. `04-enough-bits.md` -- Find how many bits you need to give each thing in a set its own pattern.  
   Standards: none. Keywords: (none new).

## 02-binary/ -- Binary numbers

Count, read and write numbers in binary with the place values 1, 2, 4, 8 and 16.

1. `01-place-value.md` -- Say what each place is worth in an everyday number and in a binary number.  
   Standards: none. Keywords: "place value", "binary (number)".
2. `02-reading-binary.md` -- Read a binary number of up to 5 digits by adding the place values of its 1s.  
   Standards: none. Keywords: (none new).
3. `03-counting.md` -- Count in binary from 0 to 15, and on to 31 with a fifth bit.  
   Standards: none. Keywords: (none new).
4. `04-writing-binary.md` -- Write a number from 0 to 31 in binary.  
   Standards: none. Keywords: (none new).
5. `05-bytes.md` -- Say that a byte is 8 bits, which hold the numbers 0 to 255, and run a BASIC program that prints the place values.  
   Standards: none. Keywords: "byte".

## 03-codes/ -- Letters and pictures

Say how a computer stores letters and black-and-white pictures as numbers.

1. `01-secret-codes.md` -- Use a code that gives each letter a number to write and read a message.  
   Standards: none. Keywords: (none new; "code" defined in bold).
2. `02-letters-as-numbers.md` -- Say that a computer keeps each letter as a number from a code that computers share, and find a letter's number.  
   Standards: none. Keywords: "ASCII".
3. `03-pixels.md` -- Say that a picture on a screen is a grid of pixels, and that each pixel of a black-and-white picture is one bit.  
   Standards: none. Keywords: (none new; "pixel" is part 1's, 05-drawing/01).
4. `04-pictures-as-bits.md` -- Draw a small black-and-white picture from rows of bits, and write the bits of a picture.  
   Standards: none. Keywords: (none new).

## 04-networks/ -- How messages travel

Model how a message is cut into packets, carried by routers across the Internet, and put back together. Standards: 1B-NI-04.

1. `01-networks.md` -- Say what a network is, and that the Internet is a network of networks.  
   Standards: "1B-NI-04". Keywords: "network", "Internet".
2. `02-packets.md` -- Explain why a long message is cut into small packets before it is sent.  
   Standards: "1B-NI-04". Keywords: "packet".
3. `03-addresses.md` -- Say that every device on the Internet has an IP address, and that each packet carries the address it goes to and the one it comes from.  
   Standards: "1B-NI-04". Keywords: "IP address".
4. `04-routers.md` -- Follow a packet hop by hop through routers, and say that packets of one message can take different routes.  
   Standards: "1B-NI-04". Keywords: "router" ("hop" defined in bold, not a keyword: part 1 uses the everyday word).
5. `05-back-together.md` -- Explain how numbered packets are put back in order at the end, and what happens when one is lost.  
   Standards: "1B-NI-04". Keywords: (none new).

## 05-safe-online/ -- Staying safe online

Keep private information and passwords safe, be kind online, and use other people's work fairly. Standards: 1B-NI-05, 1B-IC-21.

1. `01-private-information.md` -- Tell private information from what is safe to share, and say what to do when someone online asks for it.  
   Standards: "1B-NI-05". Keywords: "private information", "trusted adult".
2. `02-passwords.md` -- Say why a password is kept secret, tell a strong password from a weak one, and never give it because a message asks.  
   Standards: "1B-NI-05". Keywords: "password", "account (online)".
3. `03-being-kind.md` -- Treat people online kindly, and say what to do when someone is unkind to you or to others.  
   Standards: none. Keywords: (none new).
4. `04-other-peoples-work.md` -- Use pictures and other work made by others only with permission or when the maker allows it, and say who made it.  
   Standards: "1B-IC-21". Keywords: "public domain", "permission (to use)".
