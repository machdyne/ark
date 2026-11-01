# Sound at work

```lesson
(objective "Explain how sonar, ultrasound imaging and noise-canceling headphones use echoes and interference.")
(standards "HS-PS4-5")
(minutes 25)
(keywords "sonar" "ultrasound")
```

You learn how three devices use what you know about sound waves:
echoes and interference.

A ship cannot see the sea floor, but it can hear it. **Sonar** sends a
short pulse of sound into the water and listens for its echo. The time
the echo takes gives the distance, by $d = v t / 2$; sending pulses in
many directions maps the floor, a shipwreck or a school of fish. Sound
travels about 1,500 m/s in seawater.

```sources
(source "NOAA Ocean Service, What is sonar? (oceanservice.noaa.gov)")
(source "OpenStax, College Physics 2e (2022), section 17.2, table 17.1 (seawater: 1,540 m/s)")
```

```check
(number
  (ask "A ship's sonar pulse returns from the sea floor 4.0 s after it is sent. Taking sound in seawater as 1,500 m/s, how deep is the sea there, in meters?")
  (answer 3000) (unit "m") (from "1500 * 4.0 / 2")
  (wrong-if 6000 "That is the whole path, down and back. The depth is half of it.")
  (wrong-if 686 "That uses the speed of sound in air. Sonar works in water, at about 1,500 m/s.")
  (hint "d = v t / 2."))
```

---

## Ultrasound

Sound with frequencies above about 20,000 Hz, too high for people to
hear, is **ultrasound**. Doctors use ultrasound of a few million hertz
to look inside the body without surgery. A probe on the skin sends
pulses in; each boundary between tissues reflects part of each pulse,
and the times of the echoes tell how deep each boundary is. A computer
builds a picture from them.

Ultrasound is used because its short wavelength shows small details:
waves pass small things without reflecting much from them unless the
wavelength is about their size or smaller.

```sources
(source "OpenStax, College Physics 2e (2022), section 17.7, Ultrasound")
(source "US Food and Drug Administration, Ultrasound Imaging (fda.gov)")
```

```check
(number
  (ask "Ultrasound travels about 1,540 m/s in soft tissue. What is the wavelength of 5,000,000 Hz (5 MHz) ultrasound there, in millimeters? Give it to the nearest hundredth.")
  (answer 0.31) (within 0.005) (unit "mm") (from "1540 / 5000000 * 1000")
  (wrong-if 0.0003 "That is right in meters. The question asks for millimeters: 1 m = 1,000 mm.")
  (hint "lambda = v / f in meters, then times 1,000.")
  (hint "1,540 / 5,000,000 = 0.000308 m."))
```

---

## Noise-canceling headphones

Noise-canceling headphones use destructive interference. A small
microphone on each ear cup picks up the steady sound from outside. The
headphone's electronics make a copy that is out of step, with each compression turned
into a rarefaction, and the speaker plays it along with your music. In
your ear the two sounds add by superposition and largely cancel.

They work best on steady, low sounds, such as an airplane's engine
hum, which are easy to copy in time.

```sources
(source "OpenStax, College Physics 2e (2022), chapter 17, Physics of Hearing (noise-canceling headphones)")
```

```check
(choice
  (ask "How does a noise-canceling headphone make an engine's hum quieter?")
  (right "It plays a copy of the hum, half a cycle out of step, so the two cancel")
  (wrong "It plays the hum louder, so you get used to it"
    "Adding the same sound in step would make it louder: constructive interference. The copy must be out of step.")
  (wrong "It blocks all air from reaching your ear"
    "The ear cups block some sound, but the canceling is done by interference: an out-of-step copy added in.")
  (hint "Which kind of interference makes a sound weaker?"))
```

---

## Worked example

```example
(example
  (problem "An ultrasound echo from a boundary inside the body returns 0.000065 s (65 microseconds) after the pulse. How deep is the boundary? Use 1,540 m/s.")
  (step "d = v t / 2 = 1,540 * 0.000065 / 2.")
  (step "d = 0.050 m.")
  (answer "about 5.0 cm"))
```

```example
(example
  (problem "A fishing boat's sonar hears an echo from a school of fish 0.20 s after the pulse. How deep are the fish? Use 1,500 m/s.")
  (step "d = v t / 2.")
  (step (number (ask "d, in meters?") (answer 150) (unit "m") (from "1500 * 0.20 / 2")
    (wrong-if 300 "That is the path down and back. The fish are half that deep.")
    (hint "1,500 * 0.20 / 2.")))
  (answer "150 m"))
```

---

## Practice

```check
(choice
  (ask "Bats find insects in the dark by their echoes. Why do bats use very high frequencies?")
  (right "High frequencies have short wavelengths, which reflect well from small things like insects")
  (wrong "High frequencies travel faster through the air"
    "All frequencies of sound travel at the same speed in the same air. The difference is the wavelength.")
  (wrong "Low frequencies cannot reflect"
    "Low frequencies reflect from large things like walls, but pass small insects without much echo.")
  (hint "Compare the wavelength with the size of an insect."))
```

```check
(choice
  (ask "Which of these uses mainly echoes, rather than interference?")
  (right "Sonar mapping the sea floor")
  (wrong "Noise-canceling headphones"
    "They work by adding an out-of-step copy of the sound: destructive interference, not echoes.")
  (wrong "Two speakers making loud and quiet spots in a room"
    "Loud and quiet spots come from the two sounds adding in and out of step: interference.")
  (hint "Which one times a sound that bounces back?"))
```

```sources
(source "OpenStax, College Physics 2e (2022), chapter 17, Physics of Hearing (echolocation by bats)")
```

So: sonar and ultrasound find distances by timing echoes, and
noise-canceling headphones remove sound by destructive interference.
