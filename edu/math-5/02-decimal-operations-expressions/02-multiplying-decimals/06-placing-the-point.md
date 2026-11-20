# Placing the decimal point

```lesson
(objective "Multiply decimals as whole numbers, then place the decimal point by the places in the factors, and explain why that works.")
(standards "5.NBT.B.7")
(minutes 25)
```

You can multiply decimals as whole numbers, then use place value to put
the decimal point in the product.

Take $2.3 * 0.4$. Think of the factors by their smallest place:

- 2.3 is 23 tenths. 0.4 is 4 tenths.
- 23 × 4 = 92.
- Tenths times tenths are hundredths, as on the 10 by 10 square.

So the product is 92 hundredths:

$$ 2.3 * 0.4 = 0.92 $$

```check
(text
  (ask "3.2 is 32 tenths and 0.6 is 6 tenths. 32 × 6 = 192. What is 3.2 × 0.6?")
  (accept "1.92") (accept "1.920")
  (true "3.2 * 0.6 = 1.92")
  (wrong-if "19.2" "Tenths times tenths are hundredths. 192 hundredths = 1.92.")
  (wrong-if "192" "192 counts hundredths, not wholes. 192 hundredths = 1.92.")
  (hint "Tenths × tenths = hundredths.")
  (hint "192 hundredths = ?"))
```

---

## A tenth of a hundredth

Tenths times hundredths are thousandths. A thousandth is 1/10 of a
hundredth.

$0.7 * 0.35$: 7 tenths × 35 hundredths. 7 × 35 = 245. So the product is
245 thousandths:

$$ 0.7 * 0.35 = 0.245 $$

| Factors | Product |
|---|---|
| whole × tenths | tenths |
| whole × hundredths | hundredths |
| tenths × tenths | hundredths |
| tenths × hundredths | thousandths |

```check
(text
  (ask "What is 0.3 × 0.15? (3 × 15 = 45.)")
  (accept "0.045") (accept ".045")
  (true "0.3 * 0.15 = 0.045")
  (wrong-if "0.45" "Tenths times hundredths are thousandths, not hundredths. 45 thousandths = 0.045.")
  (wrong-if "4.5" "0.3 × 0.15 is less than 0.15, since 0.3 is less than 1. 45 thousandths = 0.045.")
  (hint "Tenths × hundredths = thousandths."))
```

---

## A shortcut, and why

Count the decimal places in both factors and add them. The total is
the number of places in the product:

- tenths (1 place) × tenths (1 place) = hundredths (2 places)
- tenths (1 place) × hundredths (2 places) = thousandths (3 places)

The shortcut works because of the reason above. Check it with an
estimate: $2.3 * 0.4$ is about $2 * 0.5 = 1$, and 0.92 is close to 1.

```check
(choice
  (ask "4.6 × 2.3: 46 × 23 = 1,058. Where does the decimal point go?")
  (right "10.58: tenths × tenths are hundredths, 2 places" (true "4.6 * 2.3 = 10.58"))
  (wrong "105.8" (false "4.6 * 2.3 = 105.8")
    "That has only 1 place. Tenths × tenths are hundredths: 2 places. Estimate: 5 × 2 = 10, so 10.58.")
  (wrong "1.058" (false "4.6 * 2.3 = 1.058")
    "That is thousandths, 3 places. The factors have 1 place each: 2 places in all. Estimate: about 10.")
  (hint "Estimate: about 5 × 2."))
```

---

## Zeros at the end

1.6 × 0.25: 16 × 25 = 400. Tenths × hundredths: 3 places. So the
product is 0.400, which is 0.4.

Place the point first, then drop the zeros at the end. Do not drop the
zeros before you count.

```check
(text
  (ask "What is 0.5 × 0.8? (5 × 8 = 40.)")
  (accept "0.4") (accept ".4") (accept "0.40") (accept ".40")
  (true "0.5 * 0.8 = 0.4")
  (wrong-if "0.04" "40 hundredths is 0.40. The zero at the end comes after the 4: 0.40 = 0.4.")
  (wrong-if "4" "40 counts hundredths: 40 hundredths = 0.40.")
  (hint "Tenths × tenths: 40 hundredths."))
```

---

## Worked example

```example
(example
  (problem "Find 1.25 × 3.")
  (step "125 × 3 = 375.")
  (step "Hundredths × a whole = hundredths: 2 places.")
  (step "Estimate: about 1 × 3 = 3. 3.75 is close.")
  (answer "1.25 × 3 = 3.75"))
```

```example
(example
  (problem "Find 2.4 × 0.06.")
  (step "24 × 6 = 144.")
  (step "Tenths × hundredths = thousandths: 3 places.")
  (step (text (ask "So 2.4 × 0.06 = ?")
    (accept "0.144") (accept ".144")
    (true "2.4 * 0.06 = 0.144")
    (wrong-if "1.44" "Tenths × hundredths are thousandths, 3 places: 0.144.")))
  (answer "2.4 × 0.06 = 0.144"))
```

---

## Practice

```check
(text
  (ask "What is 5.3 × 0.7?")
  (accept "3.71") (accept "3.710")
  (true "5.3 * 0.7 = 3.71")
  (wrong-if "37.1" "Tenths × tenths are hundredths: 371 hundredths = 3.71.")
  (wrong-if "0.371" "Only 2 places: 1 in each factor. Estimate: 5 × 0.7 is about 3.5.")
  (hint "53 × 7 = 371."))
```

```check
(text
  (ask "What is 12 × 0.15?")
  (accept "1.8") (accept "1.80") (accept "1.800")
  (true "12 * 0.15 = 1.8")
  (wrong-if "18" "12 × 15 = 180 hundredths, which is 1.80.")
  (wrong-if "0.18" "180 hundredths, not 18. Place the point first, then drop the end zero: 1.80 = 1.8.")
  (hint "12 × 15 = 180. Whole × hundredths: 2 places."))
```

---

```check
(text
  (ask "What is 0.8 × 0.45?")
  (accept "0.36") (accept ".36") (accept "0.360") (accept ".360")
  (true "0.8 * 0.45 = 0.36")
  (wrong-if "0.036" "8 × 45 = 360, so 360 thousandths = 0.360. The 0 at the end is dropped after the point is placed.")
  (wrong-if "3.6" "Tenths × hundredths = thousandths: 3 places. 0.360 = 0.36.")
  (hint "8 × 45 = 360. 3 places."))
```

```check
(choice
  (ask "Why is 0.4 × 0.2 = 0.08 and not 0.8?")
  (right "Tenths × tenths are hundredths, so 4 × 2 = 8 hundredths" (true "0.4 * 0.2 = 0.08"))
  (wrong "Because you add the decimal places"
    "Adding the places is the shortcut, not the reason. The reason is the size of the parts: a tenth of a tenth is a hundredth.")
  (wrong "It is 0.8: 4 × 2 = 8 tenths" (false "0.4 * 0.2 = 0.8")
    "0.8 would be 4 tenths × 2 wholes. Here both factors are tenths, so the parts are hundredths.")
  (hint "On the 10 by 10 square, how big is the overlap of 4 columns and 2 rows?"))
```

So: multiply as whole numbers, then place the decimal point by the size of the parts: tenths × tenths are hundredths, tenths × hundredths are thousandths.
