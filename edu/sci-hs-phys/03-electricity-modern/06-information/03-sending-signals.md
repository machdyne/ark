# Sending signals

```lesson
(objective "Explain how radio waves and optical fibers carry information by changing a carrier wave.")
(standards "HS-PS4-5")
(minutes 25)
(keywords "carrier wave" "modulation")
```

You can explain how a radio station or an optical fiber puts sound,
pictures and data onto a wave.

A radio station sends out a steady wave of one frequency, its
**carrier wave**. A steady wave carries no information: it is the same every
moment. To carry a signal, the station changes the carrier in step with
the signal. Changing a carrier wave to carry a signal is
**modulation**.

```figure
(define k (choice 'm '("None" "AM" "FM") "Modulation"))
(define (msg t) (sin (* 2 pi t)))
(line 20 50 300 50 'grey 1)
(text 20 22 "signal" 'small)
(path (let loop ((i 40) (pts '()))
        (if (< i 0) pts (let ((t (/ i 40))) (loop (- i 1) (cons (+ 20 (* 280 t)) (cons (- 50 (* 20 (msg t))) pts))))))
      'ink 1.5)
(line 20 150 300 150 'grey 1)
(text 20 100 "wave sent" 'small)
(path (let loop ((i 160) (pts '()))
        (if (< i 0) pts
            (let* ((t (/ i 160))
                   (y (cond ((= k 0) (sin (* 2 pi 12 t)))
                            ((= k 1) (* (+ 1 (* 0.6 (msg t))) 0.62 (sin (* 2 pi 12 t))))
                            (else (sin (+ (* 2 pi 12 t) (* 5 (- 1 (cos (* 2 pi t))))))))))
              (loop (- i 1) (cons (+ 20 (* 280 t)) (cons (- 150 (* 35 y)) pts))))))
      'ink 1.2)
(caption (list-ref '("The carrier alone: no information." "AM: the amplitude follows the signal."
                     "FM: the frequency follows the signal.") k))
```

```sources
(source "OpenStax, College Physics (2012), section 24.3, The Electromagnetic Spectrum")
```

```check
(choice
  (ask "In AM radio, what part of the carrier wave changes with the sound?")
  (right "Its amplitude")
  (wrong "Its frequency"
    "That is FM, frequency modulation. In AM, amplitude modulation, the frequency stays the same and the height of the wave changes.")
  (wrong "Its speed"
    "All radio waves travel at the speed of light. AM changes the wave's amplitude.")
  (hint "AM stands for amplitude modulation."))
```

---

## Stations and frequencies

Each station has its own carrier frequency, and a radio tunes to one
frequency and ignores the rest. In the US, AM stations use carriers
from about 540 to 1,700 kHz, and FM stations from 88 to 108 MHz.

```sources
(source "US Federal Communications Commission, Media Bureau, Audio Division: AM and FM radio")
```

```check
(number
  (ask "An AM station broadcasts on 1,000 kHz. What is the wavelength of its carrier, in meters?")
  (answer 300) (from "3.00 * 10^8 / (1000 * 10^3)") (unit "m")
  (wrong-if 300000 "That uses 1,000 Hz, not 1,000 kHz. 1,000 kHz is 1,000,000 Hz.")
  (hint "lambda = c / f, with f = 1,000,000 Hz."))
```

---

## Digital modulation

Digital signals are sent the same way: the carrier is switched between
a few set amplitudes, frequencies or timings, each standing for a group
of bits. Wi-Fi and mobile phones send millions of bits each second
like this.

```check
(choice
  (ask "A transmitter sends a strong carrier for 1 and a weak one for 0. What is it doing?")
  (right "Modulating the carrier's amplitude to send bits")
  (wrong "Modulating the carrier's frequency to send bits"
    "The frequency stays the same; only the strength, the amplitude, changes between 1 and 0.")
  (wrong "Sending an analog signal"
    "Only two set levels are used, each standing for a bit, so the signal it carries is digital.")
  (hint "What changes between a 1 and a 0?"))
```

---

## Optical fibers

An optical fiber carries light, kept inside it by total internal
reflection. A laser at one end is switched on and off billions of times
a second, sending bits as flashes of light. The light's frequency is so
high that a fiber can carry far more bits each second than a radio
channel, and glass is so clear that the light travels many kilometers
before it needs to be boosted. Most of the internet's long-distance
traffic travels this way.

```sources
(source "OpenStax, Physics (2020), chapter 16, Mirrors and Lenses")
(source "The Nobel Prize in Physics 2009, nobelprize.org: Charles K. Kao, for groundbreaking achievements concerning the transmission of light in fibers for optical communication")
```

```check
(choice
  (ask "Why can an optical fiber carry far more information each second than a radio channel?")
  (right "Light's very high frequency lets it be switched on and off far faster")
  (wrong "Light travels much faster in glass than radio waves in air"
    "Light in glass is in fact slower than radio waves in air. The advantage is light's far higher frequency.")
  (wrong "Glass stores information as it goes"
    "The fiber only guides the light. It carries more because light can be modulated far faster.")
  (hint "How often can a wave be changed, compared with its frequency?"))
```

---

## Practice

```check
(number
  (ask "An FM station broadcasts at 100 MHz. What is the wavelength of its carrier, in meters?")
  (answer 3) (from "3.00 * 10^8 / (100 * 10^6)") (unit "m")
  (wrong-if 0.33 "That divides f by c. lambda = c / f.")
  (hint "lambda = c / f, with f = 100,000,000 Hz."))
```

```check
(choice
  (ask "In FM radio, what stays the same as the music plays?")
  (right "The carrier's amplitude")
  (wrong "The carrier's frequency"
    "In FM the frequency is what changes with the music, a little above and below the station's frequency.")
  (wrong "Nothing: everything about the wave changes"
    "FM changes only the frequency. The amplitude stays the same.")
  (hint "FM is frequency modulation."))
```

---

A carrier wave carries information when it is modulated: its amplitude
(AM), its frequency (FM), or switched on and off for bits, as radio
transmitters and optical fibers do.
