# Timetables

```lesson
(objective "Read a bus or train timetable to find a departure and how long a trip takes.")
(minutes 20)
(keywords "table" "timetable")
```

You can find the bus or train you need on a timetable and work out how long the trip takes.

A **table** sets out numbers or words in a grid. A **row** runs across; a **column** runs down. A **timetable** is a table of the times a bus or train leaves each stop. This one is a made-up bus route: each row is a stop, each column is one bus.

| Stop | Bus A | Bus B | Bus C |
|---|---|---|---|
| Station | 07:15 | 08:05 | 09:20 |
| Market St | 07:24 | 08:16 | 09:29 |
| Hospital | 07:38 | 08:33 | 09:43 |
| College | 07:50 | 08:47 | 09:55 |

To follow one bus, read down its column.

```check
(text
  (ask "Bus B leaves the Station at 08:05. When does it get to the Hospital? Write it like 10:45.")
  (accept "08:33") (accept "8:33") (accept "0833") (accept "08.33") (accept "8.33")
  (accept "8:33 am") (accept "8:33 a.m.") (accept "8:33am")
  (wrong-if "07:38" "That is in the Bus A column. Bus B is the next column: read down it to the Hospital row.")
  (wrong-if "08:16" "That is Market St. Go down one more row to the Hospital.")
  (hint "Find the Bus B column, then the Hospital row."))
```

---

## Finding the bus you need

To arrive by a certain time, look along the row of the stop where you get off. Pick the latest time that is not after when you need to be there; then read up that column to see when to leave.

```check
(choice
  (ask "You must be at the College by 09:00. You get on at Market St. Which bus do you take?")
  (right "Bus B, leaving Market St at 08:16")
  (wrong "Bus C, leaving Market St at 09:29"
    "Bus C reaches the College at 09:55, which is after 09:00. You would be late.")
  (wrong "Bus A, leaving Market St at 07:24"
    "Bus A gets you there in time, but at 07:50 -- over an hour early. Bus B arrives at 08:47 and is still on time.")
  (hint "Look along the College row. Which times are before 09:00?")
  (hint "Pick the later of those, then read up to Market St."))
```

---

## How long is the trip?

The time from one stop to another is a duration: count on from the earlier time to the later one in the same column.

```check
(number
  (ask "How many minutes does Bus C take from the Station to the College?")
  (answer 35) (unit "minutes") (from "40 + 55 - 60")
  (wrong-if 23 "That is the trip to the Hospital, at 09:43. The College is one row further down: 09:55.")
  (hint "Read down the Bus C column: 09:20 to 09:55."))
```

---

## A worked example

```example
(example
  (problem "On Bus A, how long is it from Market St to the College?")
  (step "Read down the Bus A column: Market St is 07:24, College is 07:50.")
  (step "Count on: 07:24 to 07:30 is 6 minutes.")
  (step "07:30 to 07:50 is 20 minutes.")
  (answer "6 + 20 = 26 minutes."))
```

```check
(number
  (ask "Now you: on Bus B, how many minutes from the Station to the Hospital?")
  (answer 28) (unit "minutes") (from "33 - 5")
  (wrong-if 33 "Bus B leaves the Station at 08:05, not 08:00. From 08:05 to 08:33 is 28 minutes.")
  (hint "Bus B: Station 08:05, Hospital 08:33."))
```

---

## Practice

The same trip can take a different time on different buses, for example because of traffic at rush hour. Timetables show this.

```check
(choice
  (ask "Which bus takes the longest from the Station to the College?")
  (right "Bus B: 42 minutes" (true "47 + 60 - 65 = 42"))
  (wrong "Bus C: 35 minutes"
    "35 minutes is the shortest time here: Bus A takes 35 too. Bus B takes 08:05 to 08:47, which is 42 minutes.")
  (wrong "Bus A: 35 minutes"
    "Bus A takes 07:15 to 07:50, which is 35 minutes. Bus B takes 42.")
  (hint "Work out each bus from its first row to its last row."))
```

```check
(text
  (ask "You miss Bus A at the Hospital. When is the next bus from the Hospital? Write it like 10:45.")
  (accept "08:33") (accept "8:33") (accept "0833") (accept "08.33") (accept "8.33")
  (accept "8:33 am") (accept "8:33 a.m.") (accept "8:33am")
  (wrong-if "09:43" "That is Bus C. Bus B comes first, at 08:33.")
  (hint "Read along the Hospital row to the next column."))
```

A timetable is a table: read down a column to follow one bus, and along a row to see every bus at one stop.
