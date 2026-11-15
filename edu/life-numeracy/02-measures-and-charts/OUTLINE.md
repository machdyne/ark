# Outline: Measures and charts

Part `02-measures-and-charts` of `life-numeracy`, Everyday Maths (adults): 5 units, 25 lessons. This file has no number, so learn ignores it. Level `life`: no standard codes. Each lesson uses the file name and objective below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears.

## Figures

Own procedures go in `lib/nu2.scm` only, every name starting with `nu2-` (under 7 KB):

- `nu2-bars` -- a bar chart with a scale that can start above 0 (the misleading chart)
- `nu2-line` -- a line chart: points joined, a scale, labels along the bottom
- `nu2-pie` -- a pie chart from parts, each slice a pattern and a label
- `nu2-gauge` -- a straight measuring scale with major and minor marks and a pointer
- `nu2-room` -- a rectangle with its side lengths written outside

Built-in procedures that suit this part: `clock-face` (times), `number-line`, `nl-mark`, `nl-jump` (time between two times, temperatures), `graph`, `graph-axes`, `plot`, `plot-point` (temperature conversion), `grid` (area in squares), `ruler`, `wedge`, `label`, `caption`. Tables are Markdown tables.

## Words

- Uses from part 1 (its OUTLINE.md): digit, place value, million, round (a number), estimate, negative number, fraction, numerator, denominator, decimal, decimal point, tenth, hundredth, percent, percentage, discount, sales tax, VAT, ratio, scale (a recipe), unit price, budget, income, expense, interest, loan.
- Taught here before use: table, timetable (01/03); data, average (04/01). Row and column are used as everyday words. Do not say "mean", "median", "range" or "outlier" before unit 04, nor "axis" before 05/01.
- Money as `\$`; unit facts from NIST and the BIPM; US and metric both.

## 01-time-and-timetables: Time and timetables

Read and work with times on the 12-hour and 24-hour clocks and in timetables.

- `01-24-hour-clock.md` -- Change times between the 12-hour and the 24-hour clock. Keywords: a.m., p.m., noon, midnight, 24-hour clock.
- `02-time-between.md` -- Work out how long it is from one time to another, also across noon and midnight. Keywords: duration.
- `03-timetables.md` -- Read a bus or train timetable to find a departure and how long a trip takes. Keywords: table, timetable.
- `04-hours-and-minutes.md` -- Convert between hours and minutes, including times written as decimals of an hour. Keywords: unit (of measure), convert.
- `05-time-sheets.md` -- Add up hours worked on a time sheet and work out the pay. Keywords: time sheet, hourly rate.

## 02-units-and-converting: Units and converting

Use metric and US units and convert within and between them.

- `01-metric-units.md` -- Name the metric units of length, mass and volume and what their prefixes mean. Keywords: metric system, meter, gram, liter, prefix (of a unit).
- `02-metric-conversions.md` -- Convert within the metric system by multiplying or dividing by 10, 100 or 1000.
- `03-us-units.md` -- Use the US units of length, weight and volume and convert between them. Keywords: US customary units, inch, foot, yard, mile, ounce, pound, cup, pint, quart, gallon.
- `04-metric-and-us.md` -- Convert between metric and US units with a calculator, and check by estimating. Keywords: conversion factor.
- `05-temperature.md` -- Read temperatures in Celsius and Fahrenheit and convert between them. Keywords: degree (of temperature), Celsius, Fahrenheit.

## 03-scales-and-area: Scales, perimeter and area

Read measuring scales and work out the perimeter and area of rooms.

- `01-reading-scales.md` -- Read a measuring scale by working out what each small mark is worth. Keywords: scale (of a measuring tool), interval (of a scale).
- `02-perimeter.md` -- Work out the perimeter of a room, for example for a baseboard or a fence. Keywords: perimeter.
- `03-area-of-a-room.md` -- Work out the area of a rectangular room in square meters or square feet. Keywords: area, square meter, square foot.
- `04-odd-shaped-rooms.md` -- Work out the area of an L-shaped room by cutting it into rectangles. Keywords: compound shape.
- `05-buying-materials.md` -- Work out how much paint or flooring to buy, rounding up to whole cans or packs. Keywords: coverage.

## 04-averages: Averages

Find and compare the mean, median, mode and range of a set of numbers.

- `01-mean.md` -- Work out the mean of a set of numbers. Keywords: data, average, mean.
- `02-median.md` -- Find the median of a set of numbers, odd or even in count. Keywords: median.
- `03-range-and-mode.md` -- Find the range and the mode, and say what each tells you. Keywords: range (of data), mode.
- `04-which-average.md` -- Choose between mean and median when one number is far from the rest. Keywords: outlier.
- `05-frequency-tables.md` -- Find the total and the mean from a frequency table. Keywords: frequency, frequency table.

## 05-charts: Reading charts

Read bar, line and pie charts and spot a chart that misleads.

- `01-bar-charts.md` -- Read values from a bar chart with a scale and compare bars. Keywords: chart, bar chart, axis.
- `02-comparing-bars.md` -- Read a grouped bar chart with a key. Keywords: key (of a chart), grouped bar chart.
- `03-line-charts.md` -- Read a line chart and describe how something changes over time. Keywords: line chart, trend.
- `04-pie-charts.md` -- Read a pie chart in percents and work out the amount each slice stands for. Keywords: pie chart.
- `05-misleading-charts.md` -- Spot a chart whose scale does not start at 0 or is uneven, and read the true numbers. Keywords: misleading chart.
