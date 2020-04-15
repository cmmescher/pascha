# Pascha
Pascha is a simple shell script to calculate and display the date of Pascha
(Easter).

## Installation

``` sh
sudo make install
```

## Dependencies

- `date` -- get current date information and convert dates.

## Usage

`pascha` prints out the date of Pascha (Easter). By default it prints the date of
Pascha for the current year, calculated and displayed using the Julian calendar.

If the `-J` option is given then the date will be displayed using the
Revised Julian calendar instead, but still calculated using the Julian calendar.
With `-g` the date will be both calculated and displayed using the
Gregorian calendar. The `-j` option has the default behavior, using the
Julian calendar both for display and calculation. If more than one of these
three options is given, then `-J` will have precedence, followed by
`-j`, and lastly `-g`.

`pascha` can also print out certain other dates, relative to Pascha for a given
year, and even the number of days until Pascha. These are Meatfare (`-m`),
Cheesefare (`-c`), Ash Wednesday (`-a`), the Midfeast of Pentecost (`-M`), the
Leavetaking of Pascha (`-l`), the Ascension of our Lord (`-A`), and Pentecost
(`-p`). By default these dates are printed out after the date of Pascha, but
printing the date of Pascha can be surpressed with `-x`. The dates can also be
printed in chronological order, rather than with Pascha first, using `-X`. The
days until Pascha can be printed using `-d`.

By default, `pascha` will print out only the month and the day, if no year is
specified. A year can be specified using `-y`. When specified the date of Pascha
will be calculated for the given year, otherwise the current year is used. When
a year is given with `-y` the year will be printed out as well, unless the `-s`
option is used. `pascha` can also use the Byzantine Calendar's Anno Mundi style
year if given the `-b` option. In this case `pascha` will also print the year by
default, even if `-y` is not used.

`pascha` can print out the name associated with the date if given the `-v`
option. The `-V` option is the same as `-v`, except it uses the name "Easter"
rather than "Pascha."

Please see `man pascha` for more information.

## Compatibility

`pascha` has only been tested on GNU+Linux systems. It may work on MacOS, BSD,
or other Unix-like operating systems, but it may not. If you do get it to run on
any of these, please let me know, so this can be updated.

## Version

1.2

## Author

Written by Christopher Michael Mescher orginally in 2020.

## Copyright and License

Copyright © 2020 Christopher Michael Mescher.

License [GPLv3+](https://gnu.org/licenses/gpl.html)

## Project status

The project is mostly complete. No new features are planned, but bugs can be
reported to pascha AT mescher.faith and they will be worked on.
