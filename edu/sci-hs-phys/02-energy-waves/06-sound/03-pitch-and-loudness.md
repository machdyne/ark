# Pitch and loudness

```lesson
(objective "Relate pitch to frequency and loudness to intensity, and read sound levels in decibels.")
(standards "HS-PS4-1")
(minutes 25)
(keywords "pitch" "intensity (of a wave)" "decibel")
```

You learn which property of a sound wave you hear as high or low, and
which as loud or soft.

How high or low a sound seems to you is its **pitch**. Pitch is set by
the frequency: the more compressions reach your ear each second, the
higher the note. Young people with healthy hearing can hear from about
20 Hz to about 20,000 Hz; the top of that range drops with age.

Change the frequency and the amplitude of this sound. The graph is the
air pressure at your ear over 10 milliseconds (ms).

```figure
(define f (slider 'f 100 1000 300 "Frequency (Hz)" 100))
(define A (slider 'A 0.25 1 0.75 "Amplitude" 0.25))
(graph 40 30 260 140 0 10 -1.2 1.2)
(graph-axes 2 0.5 "t (ms)" "pressure")
(plot (lambda (t) (* A (sin (* 2 pi f (/ t 1000))))) 'ink 1.5)
(text 160 210 (string-append (fmt (/ (* f 10) 1000) 0) " cycles in 10 ms") 'centre 'small 'bold)
(caption "Higher frequency: higher pitch. Larger amplitude: louder.")
```

```sources
(source "OpenStax, College Physics 2e (2022), section 17.6, Hearing")
```

```check
(choice
  (ask "A singer goes from a low note to a high note, equally loud. What changes in the sound wave?")
  (right "The frequency goes up")
  (wrong "The amplitude goes up"
    "A larger amplitude makes a sound louder, not higher. Pitch follows the frequency.")
  (wrong "The speed goes up"
    "All notes travel through the same air at the same speed, 343 m/s at 20 °C. A high note has a higher frequency and a shorter wavelength.")
  (hint "Which number counts the cycles each second?"))
```

---

## Intensity

A sound with a larger amplitude carries more energy. The
**intensity** of a wave is the power it carries through each square
meter, in watts per square meter (W/m^2). Loudness follows intensity:
the larger the intensity, the louder the sound.

The intensity of a wave grows with the square of its amplitude: twice
the amplitude carries 4 times the intensity.

```check
(choice
  (ask "A sound's amplitude is tripled. What happens to its intensity?")
  (right "It becomes 9 times as large" (true "3^2 = 9"))
  (wrong "It triples"
    "Intensity grows with the square of the amplitude, like kinetic energy with speed: 3^2 = 9.")
  (wrong "It stays the same, since the frequency is the same"
    "Intensity depends on the amplitude. Only the pitch is set by the frequency.")
  (hint "Intensity grows with amplitude squared."))
```

---

## Decibels

Your ears handle a huge range: the loudest sound you can bear is about
a million million times as intense as the faintest you can hear. So
sound levels are given on a scale of tens, in **decibels** (dB). Each
step of 10 dB is 10 times the intensity:

$$ beta = 10 log(I / I_0) $$

where $I_0 = 10^-12$ W/m^2 is about the faintest sound you can hear.

| Sound | level |
|---|---|
| faintest you can hear | 0 dB |
| whisper | about 20 dB |
| everyday talk | about 60 dB |
| busy traffic | about 70 dB |
| hurts the ears | about 120 dB |

```sources
(source "OpenStax, College Physics 2e (2022), section 17.3, Sound Intensity and Sound Level, table 17.2")
```

```check
(number
  (ask "A sound has an intensity of 10^-6 W/m^2. What is its level in decibels?")
  (answer 60) (unit "dB") (from "10 log(10^-6 / 10^-12)")
  (wrong-if 6 "log(10^6) = 6, but the decibel level is 10 times that.")
  (wrong-if -60 "The ratio is I / I_0 = 10^-6 / 10^-12 = 10^6, not 10^-6.")
  (hint "I / I_0 = 10^6.")
  (hint "10 * log(10^6) = 10 * 6."))
```

---

## Worked example

```example
(example
  (problem "Street traffic is at 70 dB and a quiet room at 40 dB. How many times more intense is the traffic?")
  (step "The difference is 30 dB: three steps of 10 dB.")
  (step "Each step is 10 times: 10 * 10 * 10 = 1,000.")
  (answer "1,000 times as intense"))
```

```example
(example
  (problem "A music player raises its level from 80 dB to 100 dB. How many times more intense is the sound?")
  (step "100 - 80 = 20 dB, two steps of 10 dB.")
  (step (number (ask "Times as intense?") (answer 100) (from "10^2")
    (wrong-if 20 "Decibels are not a count of times. Each 10 dB multiplies the intensity by 10: two steps, 10 * 10.")
    (wrong-if 1.25 "100 dB is not 100/80 times 80 dB. Each 10 dB step is 10 times the intensity.")
    (hint "10 * 10.")))
  (answer "100 times as intense"))
```

---

## Hearing safety

```warn
(warn "Loud sound harms hearing" "Long or repeated exposure to loud sound, such as music through earphones at high volume, can damage hearing for good. US workplace guidance (NIOSH) sets 85 dB, averaged over 8 hours, as the limit, and halves the safe time for every 3 dB above it. Turn the volume down and take breaks.")
```

```sources
(source "NIOSH, Criteria for a Recommended Standard: Occupational Noise Exposure, revised criteria 1998 (publication 98-126)")
```

```check
(number
  (ask "Under the NIOSH rule, 85 dB is allowed for 8 hours, and every 3 dB more halves the time. How many hours are allowed at 91 dB?")
  (answer 2) (unit "hours") (from "8 / 2 / 2")
  (wrong-if 4 "That is the time at 88 dB. 91 dB is two steps of 3 dB, so halve twice.")
  (hint "91 - 85 = 6 dB: two steps of 3 dB."))
```

So: pitch follows frequency, loudness follows intensity, and every
10 dB means 10 times the intensity.
