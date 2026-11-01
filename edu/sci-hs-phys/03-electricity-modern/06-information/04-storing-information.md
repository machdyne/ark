# Storing information

```lesson
(objective "Compare magnetic, optical and flash storage, and weigh how long and how safely each keeps information.")
(standards "HS-PS4-2")
(minutes 25)
```

You can explain how disks, discs and memory cards hold bits, and judge
which keeps them longest and most safely.

Every way of storing bits uses something with two states that stay put
until changed. Three kinds are common.

**Magnetic storage**, as in hard disk drives and tapes, magnetizes tiny
regions of a coated surface one way or the other. A head on an arm,
moving over a spinning disk, writes them with an electromagnet and
reads them back by the fields they make.

```sources
(source "OpenStax, Physics (2020), chapter 20, Magnetism")
```

```check
(choice
  (ask "How does a hard disk store a 1 or a 0?")
  (right "By the direction a tiny region of its surface is magnetized")
  (wrong "By a tiny hole burned in the disk"
    "That is closer to how a recordable optical disc works. A hard disk magnetizes regions one way or the other.")
  (wrong "By charge held in a tiny cell"
    "That is flash memory. A hard disk uses magnetized regions.")
  (hint "Which kind of storage is a hard disk?"))
```

---

## Optical storage

A CD, DVD or Blu-ray disc stores bits as a spiral of tiny pits and flat
areas in a reflecting layer. A laser shines on the spinning disc, and a
sensor reads how the light reflects as pits and flat areas pass.

A laser spot cannot be much smaller than the light's wavelength, so
shorter wavelengths fit more bits on a disc: CDs use infrared light of
about 780 nm, and Blu-ray discs blue-violet light of about 405 nm.

```sources
(source "F. R. Byers, Care and Handling of CDs and DVDs: A Guide for Librarians and Archivists, NIST Special Publication 500-252 (2003)")
(source "OpenStax, Physics (2020), chapter 17, Diffraction and Interference")
```

```check
(choice
  (ask "Why does a Blu-ray disc hold more than a CD of the same size?")
  (right "Its laser's shorter wavelength reads smaller pits, packed closer together")
  (wrong "It spins faster"
    "Speed changes how fast bits are read, not how many fit. Smaller pits, read by shorter-wavelength light, fit more.")
  (wrong "Blue light is brighter than infrared"
    "Brightness does not set the size of the spot. The wavelength does: shorter wavelength, smaller spot.")
  (hint "What limits how small a laser spot can be?"))
```

---

## Flash storage

**Flash memory**, in memory cards, USB sticks and solid-state drives,
is a semiconductor chip of billions of tiny cells. Each cell traps
electric charge, or not, in a tiny region surrounded by an insulator. The insulator keeps the charge in place with no power.
Flash has no moving parts, so it is fast and survives knocks.

```check
(choice
  (ask "Why does a memory card keep its bits when it is unplugged?")
  (right "The charge in each cell is surrounded by an insulator, so it cannot flow away")
  (wrong "A tiny battery inside keeps the charge"
    "Flash needs no battery. An insulator around each cell keeps the charge from leaking away, at least for years.")
  (wrong "The bits are stored as magnetized regions"
    "That is magnetic storage. Flash stores charge.")
  (hint "Which kind of material stops charge from moving?"))
```

---

## How long, how safely?

No way of storing bits lasts for ever:

| Kind | Main risks |
|---|---|
| Magnetic | worn or crashed moving parts; tapes stretch and decay |
| Optical | scratches; heat and sunlight fade the dye of discs you record yourself |
| Flash | trapped charge leaks slowly, faster when warm and unpowered; cells wear out after many writes |

How long each lasts depends on its make and on how it is kept: cool,
dry and dark helps all of them. The safest plan does not trust any one
copy: keep several copies, on more than one kind of storage, in more
than one place, and check them now and then.

```sources
(source "F. R. Byers, Care and Handling of CDs and DVDs: A Guide for Librarians and Archivists, NIST Special Publication 500-252 (2003)")
(source "US Library of Congress, Preservation: Personal Archiving")
```

```check
(choice
  (ask "A family wants to keep its photos safe for 50 years. Which plan is best?")
  (right "Several copies on different kinds of storage, kept in different places and checked now and then")
  (wrong "One good-quality flash drive in a drawer"
    "One copy can fail, be lost or burn. An unpowered flash drive also slowly loses its charge. Several copies in different places are safer.")
  (wrong "Recordable DVDs left on a sunny shelf"
    "Sunlight and heat fade the dye in recordable discs. And one place holds every copy, so one accident loses them all.")
  (hint "What if any one copy, or one place, fails?"))
```

---

## Practice

```check
(choice
  (ask "Which storage has no moving parts at all?")
  (right "Flash memory")
  (wrong "A hard disk drive"
    "A hard disk spins its disk and moves a head over it.")
  (wrong "A DVD in its player"
    "The disc spins and the laser moves across it.")
  (hint "Which one is just a chip?"))
```

```check
(choice
  (ask "Light of shorter wavelength can make a smaller spot. What does that let an optical disc do?")
  (right "Store more bits in the same area")
  (wrong "Last longer"
    "The wavelength sets how small the pits can be, so how many fit. How long a disc lasts depends on its materials and care.")
  (wrong "Be read without spinning"
    "The disc still spins under the laser. Smaller pits pack more bits into the same area.")
  (hint "Smaller spot, smaller pits."))
```

---

Magnetic storage uses magnetized regions, optical storage pits read by
a laser, and flash trapped charge; none lasts for ever, so several
copies in several places keep information safest.
