# Kilowatt-hours

```lesson
(objective "Compute the energy a device uses in kilowatt-hours and joules, and what it costs at a given price.")
(standards "HS-PS3-1" "HSN-Q.A.1")
(minutes 25)
(keywords "kilowatt-hour")
```

You can work out how much energy a device uses, and what that energy
costs.

Power is energy per second, so the energy a device uses is its power
times the time it runs:

$$ E = P t $$

In watts and seconds, $E$ comes out in joules. A home uses so many
joules that power companies use a bigger unit. The **kilowatt-hour**
(kWh) is the energy a 1 kW device uses in 1 hour:

1 kWh = 1,000 W for 3,600 s = $1000 * 3600$ J = 3,600,000 J.

```sources
(source "OpenStax, Physics (2020), chapter 19, Electrical Circuits")
(source "US Energy Information Administration, Electricity Explained: Measuring Electricity")
```

```check
(number
  (ask "A 2 kW heater runs for 3 hours. How much energy does it use, in kilowatt-hours?")
  (answer 6) (from "2 * 3") (unit "kWh")
  (wrong-if 0.67 "That divides. Energy is power times time: 2 kW x 3 h.")
  (hint "E = P t, with P in kilowatts and t in hours."))
```

---

## Watts and minutes

To get kilowatt-hours, the power must be in kilowatts and the time in
hours. Divide watts by 1,000, and minutes by 60.

```check
(number
  (ask "A 100 W lamp is on for 5 hours. How much energy does it use, in kilowatt-hours?")
  (answer 0.5) (from "100 / 1000 * 5") (unit "kWh")
  (wrong-if 500 "That is in watt-hours. Divide by 1,000 to get kilowatt-hours.")
  (hint "100 W is 0.1 kW."))
```

---

## Kilowatt-hours to joules

Each kilowatt-hour is 3,600,000 J, or $3.6 * 10^6$ J.

```check
(number
  (ask "How many joules is 0.5 kWh?")
  (answer 1800000) (from "0.5 * 3600000") (unit "J")
  (wrong-if 1800 "That multiplies by 3,600 only: watt-hours to joules. A kilowatt-hour is 1,000 times bigger: 3,600,000 J.")
  (wrong-if 500 "That changes kWh to Wh. A watt-hour is 3,600 J, so 0.5 kWh = 500 x 3,600 J.")
  (hint "1 kWh = 3,600,000 J."))
```

---

## What it costs

A power company charges for each kilowatt-hour. The price differs from
place to place and changes over time; here, take a price of 15 cents
per kWh. The cost is the energy in kilowatt-hours times the price of
one kilowatt-hour.

```check
(number
  (ask "At 15 cents per kWh, what does 6 kWh cost, in cents?")
  (answer 90) (from "6 * 15") (unit "cents")
  (wrong-if 0.4 "That divides 6 by 15. The cost is energy times price: 6 x 15.")
  (hint "Multiply the kilowatt-hours by the price of one."))
```

---

## A home's month

This chart shows one example home's use of electricity in a month. It
is an example, not an average: homes differ a great deal with climate,
size and what they heat with.

```figure
(bar-chart '(("Heat" 300) ("Water" 150) ("Fridge" 45) ("Lights" 30) ("Other" 175)) 'cool 320)
(text 40 26 "kWh in one month" 'small)
(caption "One example home, made up for this lesson.")
```

```check
(number
  (ask "At 15 cents per kWh, what does this home's heating cost for the month, in dollars?")
  (answer 45) (from "300 * 15 / 100") (unit "dollars")
  (wrong-if 4500 "That is the cost in cents. Divide by 100 for dollars.")
  (wrong-if 20 "That divides 300 by 15. Multiply: 300 kWh x 15 cents.")
  (hint "300 x 15 cents, then change cents to dollars."))
```

---

## A hair dryer

```example
(example
  (problem "A 1,500 W hair dryer is used 10 minutes a day for 30 days. At 15 cents per kWh, what does that cost?")
  (step "Power: 1,500 W = 1.5 kW. Time: 10 minutes x 30 = 300 minutes = 5 h.")
  (step "Energy: 1.5 x 5 = 7.5 kWh.")
  (step "Cost: 7.5 x 15 = 112.5 cents.")
  (answer "About 113 cents, or 1.13 dollars."))
```

```example
(example
  (problem "A 100 W TV is on 4 hours a day for 30 days. At 15 cents per kWh, what does that cost?")
  (step "Power: 0.1 kW. Time: 4 x 30 = 120 h.")
  (step "Energy: 0.1 x 120 = 12 kWh.")
  (step (number (ask "Cost, in cents?") (answer 180) (from "0.1 * 4 * 30 * 15")
          (wrong-if 1.8 "That is in dollars. In cents: 12 x 15 = 180.")))
  (answer "180 cents, or 1.80 dollars."))
```

---

## Practice

```check
(number
  (ask "A 50 W laptop charger runs for 6 hours. How much energy is that, in kilowatt-hours?")
  (answer 0.3) (from "50 / 1000 * 6") (unit "kWh")
  (wrong-if 300 "That is in watt-hours. Divide by 1,000.")
  (hint "50 W = 0.05 kW."))
```

```check
(number
  (ask "A 2,000 W oven runs for 45 minutes. How much energy does it use, in kilowatt-hours?")
  (answer 1.5) (from "2 * 45 / 60") (unit "kWh")
  (wrong-if 90 "That uses 45 for the time. 45 minutes is 0.75 h.")
  (hint "45 minutes = 0.75 h. Then E = 2 kW x 0.75 h."))
```

```check
(choice
  (ask "Which uses more energy: a 1,000 W kettle for 6 minutes, or a 10 W lamp for 8 hours?")
  (right "The kettle: 0.1 kWh against 0.08 kWh")
  (wrong "The lamp, since it runs much longer"
    "Time matters, but so does power. Kettle: 1 kW x 0.1 h = 0.1 kWh. Lamp: 0.01 kW x 8 h = 0.08 kWh.")
  (wrong "The kettle, by 100 times, since its power is 100 times bigger"
    "Its power is 100 times bigger, but it runs for a much shorter time. Work out both: 0.1 kWh and 0.08 kWh.")
  (hint "Work out P x t for both, in kW and hours."))
```

---

Energy is power times time, $E = P t$; a kilowatt-hour is 1 kW for 1
hour, 3,600,000 J, and the cost is the kilowatt-hours times the price.
