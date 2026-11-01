# Lenses

```lesson
(objective "Trace rays through a converging lens to find the image, as in an eye or a camera.")
(standards "HS-PS4-5")
(minutes 30)
(keywords "lens" "converging lens" "focal point" "focal length")
```

You learn how a lens bends light to form an image, and how to find
that image by drawing two rays.

A **lens** is a piece of clear material with curved surfaces that
refracts light to form an image. A lens that is thicker in the middle
than at its edges bends rays toward each other: it is a
**converging lens**.

Rays that arrive parallel to the lens's axis all pass through one
point after the lens: its **focal point**, F. The distance from the
center of the lens to the focal point is the **focal length**, $f$. A
lens has a focal point on each side, at the same distance.

```sources
(source "OpenStax, College Physics 2e (2022), section 25.6, Image Formation by Lenses")
```

```check
(choice
  (ask "Sunlight arrives in parallel rays. Where does a converging lens bring it together?")
  (right "At its focal point, one focal length behind the lens")
  (wrong "At the center of the lens"
    "The lens bends the rays, but they come together only after they pass through it, at the focal point.")
  (wrong "Nowhere: a lens spreads light out"
    "A lens thicker in the middle brings rays together. One thinner in the middle spreads them out.")
  (hint "Parallel rays and the focal point."))
```

---

## Two rays find the image

From the tip of an object, two rays are easy to draw:

1. A ray parallel to the axis bends and passes through the far focal point.
2. A ray through the center of the lens goes straight on.

Where they cross is the image of the tip. Move the object.

```figure
(define d (slider 'd 15 150 90 "Object (mm)" 15))
(define f 50)
(define di (/ 1 (- (/ 1 f) (/ 1 d))))
(define tip (- 120 40))
(define iy (+ 120 (* 40 (/ di d))))
(define s2 (min (/ 150 d) (/ 105 40)))
(still
  (line 10 120 310 120 'grey 1)
  (line 160 30 160 210 'ink 2)
  (path '(152 38 160 30 168 38) 'ink 2)
  (path '(152 202 160 210 168 202) 'ink 2)
  (dot 110 120 'ink) (dot 210 120 'ink)
  (text 110 136 "F" 'centre 'small) (text 210 136 "F" 'centre 'small))
(arrow (- 160 d) 120 (- 160 d) tip 'warm 3)
(line (- 160 d) tip 160 tip 'ink 1.5)
(line 160 tip 310 (+ tip (* 40 (/ 150 50))) 'ink 1.5)
(line (- 160 d) tip (+ 160 (* s2 d)) (+ 120 (* s2 40)) 'ink 1.5)
(if (> di 0)
    (if (< (+ 160 di) 305) (arrow (+ 160 di) 120 (+ 160 di) (min 228 iy) 'cool 3))
    (if (> (+ 160 di) 12)
        (begin
          (line 160 tip (+ 160 di) iy 'grey 1)
          (line (- 160 d) tip (+ 160 di) iy 'grey 1)
          (arrow (+ 160 di) 120 (+ 160 di) (max 12 iy) 'cool 3))))
(caption (cond ((> d 100) "Real image: smaller, upside down. f = 50 mm.")
               ((> d 50) "Real image: larger, upside down. f = 50 mm.")
               (else "Virtual image: upright, on the object's side")))
```

```check
(choice
  (ask "Put the object far from the lens, beyond 2 focal lengths. What is the image like?")
  (right "Real, upside down and smaller, on the other side of the lens")
  (wrong "Upright and larger, on the same side as the object"
    "That happens only when the object is closer than one focal length, as in a magnifying glass.")
  (wrong "There is no image"
    "The two rays still cross on the far side. Only an object exactly at the focal point gives no image.")
  (hint "Set the object to 150 mm and look at the far side."))
```

---

## The lens equation

The rays agree with the thin-lens equation, where $d_o$ is the
object's distance and $d_i$ the image's, both from the lens:

$$ 1/d_o + 1/d_i = 1/f $$

A positive $d_i$ is a real image on the far side: light really meets
there, and a screen placed there shows it. A negative $d_i$ is a
virtual image on the object's side, which you see by looking through
the lens.

```check
(number
  (ask "An object stands 30 cm from a converging lens with f = 10 cm. Where is the image, in cm from the lens?")
  (answer 15) (unit "cm") (from "1 / (1/10 - 1/30)")
  (wrong-if 20 "That is 30 - 10. The distances do not subtract; their reciprocals do: 1/d_i = 1/10 - 1/30 = 2/30.")
  (wrong-if 7.5 "That adds 1/10 and 1/30. Rearrange first: 1/d_i = 1/f - 1/d_o.")
  (hint "1/d_i = 1/10 - 1/30.")
  (hint "= 2/30, so d_i = 30/2."))
```

---

## Eyes and cameras

Your eye and a camera both use a converging lens to form a real image,
upside down, on a surface at the back: the retina in the eye, the
sensor in a camera. A camera focuses by moving its lens; your eye
focuses by changing the shape of its lens. Your brain turns the
upside-down image the right way up.

```sources
(source "OpenStax, College Physics 2e (2022), section 26.1, Physics of the Eye")
```

```check
(choice
  (ask "What kind of image does a camera's lens form on its sensor?")
  (right "A real image, upside down")
  (wrong "A virtual image, upright"
    "A virtual image cannot be caught on a surface. The sensor needs light that really meets there: a real image.")
  (wrong "A real image, upright"
    "A single converging lens forms real images upside down. The camera turns the picture round for you.")
  (hint "Is the object beyond the focal length?"))
```

---

## Worked example

```example
(example
  (problem "A magnifying glass has f = 10 cm. An insect is 5.0 cm from it. Where is the image?")
  (step "1/d_i = 1/10 - 1/5.0 = 0.10 - 0.20 = -0.10.")
  (step "d_i = -10 cm: negative, so the image is virtual, on the insect's side.")
  (answer "A virtual, upright, larger image 10 cm from the lens"))
```

```example
(example
  (problem "A projector lens with f = 0.10 m makes an image of a slide on a screen 5.0 m away. How far is the slide from the lens?")
  (step "1/d_o = 1/f - 1/d_i = 1/0.10 - 1/5.0 = 10 - 0.2.")
  (step (number (ask "d_o, in meters, to the nearest thousandth?") (answer 0.102) (within 0.0005) (unit "m") (from "1 / (1/0.10 - 1/5.0)")
    (wrong-if 0.1 "That is the focal length. The slide sits just beyond it: 1/d_o = 9.8.")
    (hint "1 / 9.8.")))
  (answer "about 0.102 m, just beyond the focal point"))
```

---

## Practice

```check
(choice
  (ask "An object sits exactly at a converging lens's focal point. What happens to the light from it?")
  (right "It leaves the lens in parallel rays, so no image forms")
  (wrong "It forms an image at the other focal point"
    "Rays from the focal point come out parallel. Parallel rays never meet, so there is no image.")
  (wrong "It forms an image at the center of the lens"
    "Rays from the focal point come out parallel and never cross, at the lens or anywhere.")
  (hint "Run the parallel-ray rule backward."))
```

```check
(number
  (ask "A lens forms a real image 20 cm behind it of an object 20 cm in front of it. What is its focal length, in cm?")
  (answer 10) (unit "cm") (from "1 / (1/20 + 1/20)")
  (wrong-if 40 "That adds the distances. Add their reciprocals: 1/f = 1/20 + 1/20.")
  (wrong-if 20 "1/f = 1/20 + 1/20 = 2/20, so f = 10 cm.")
  (hint "1/f = 1/d_o + 1/d_i."))
```

So: a converging lens brings parallel rays to its focal point, and two
rays, one parallel and one through the center, find the image.
