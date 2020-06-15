# Pascha
Pascha is a simple shell script to calculate and display the date of Pascha
(Easter).

## Installation

``` sh
git clone https://gitlab.com/cmmescher/pascha
cd pascha
sudo make install
```

If you are running MacOS or any BSD variant, make sure you have the GNU
coreutils (or another date program equivalent to GNU date) installed and
available to be run as `gdate`.

For **MacOS** you can do this by running these commands.

- First ensure that you have Homebrew installed (see [brew.sh](https://brew.sh) for more
information).

``` sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

- Then install the GNU coreutils.

``` sh
brew install coreutils
```

I assume anyone running any BSD variant can install the GNU coreutils without
instructions.

## Dependencies

- `bash` -- run the script (`sh` will not work).
- `date` (from GNU `coreutils`, or equivalent) -- get current date information and
  convert dates.

## Usage

`pascha` prints out the date of Pascha (Easter). By default it prints the date
of Pascha for the current year, calculated and displayed using the Julian
calendar. It has no required arguments or options.

If the `-J` option is given then the date will be displayed using the Gregorian
calendar (which is the same as the Revised Julian until 28 February 2800)
instead, but still calculated using the Julian calendar. With `-g` the date will
be both calculated and displayed using the Gregorian calendar. The `-j` option
has the default behavior, using the Julian calendar both for display and
calculation. If more than one of these three options is given, then `-J` will
have precedence, followed by `-j`, and lastly `-g`.

By default, `pascha` will print out only the month and the day, if no year is
specified. A year can be specified using `-y`. When specified the date of Pascha
will be calculated for the given year, otherwise the current year is used. When
a year is given with `-y` the year will be printed out as well, unless the `-s`
option is used. `pascha` can also use the Byzantine Calendar's Anno Mundi style
year if given the `-b` option. In this case `pascha` will also print the year by
default, even if `-y` is not used.

`pascha` can also print out certain other dates, relative to Pascha for a given
year. These are Meatfare (`-m`), Cheesefare (`-c`), Ash Wednesday (`-a`), the
Midfeast of Pentecost (`-M`), the Leavetaking of Pascha (`-l`), the Ascension of
our Lord (`-A`), and Pentecost (`-p`). By default these dates are printed out
after the date of Pascha, but printing the date of Pascha can be surpressed with
`-x`. The dates can also be printed in chronological order, rather than with
Pascha first, using `-X`.

`pascha` can print the number of days until Pascha (`-d`) and the number of weeks
between the Julian and Gregorian dates for Pascha (`-D`).

If given the `-v` or `-V` options, `pascha` will print out the name associated
with each date or calculation. The `-V` option is the same as `-v`, except it
uses the name "Easter" rather than "Pascha."

Please see `man pascha` for more information.

## Compatibility

`pascha` has only been tested on GNU+Linux systems. It may work on MacOS, BSD,
or other Unix-like operating systems, but it may not. If you do get it to run on
any of these, please let me know, so this can be updated.

## Version

1.3

First released publicly on Pascha 2020 (April 19, 2020 N.S.)

## Author

Written by Christopher Michael Mescher orginally in 2020.

## Copyright and License

Copyright © 2020 Christopher Michael Mescher.

License [GPLv3+](https://gnu.org/licenses/gpl.html)

## Project status

The project is mostly complete. No new features are planned, but bugs can be
reported to `echo \<pascha-mescher+faith\>|sed s/\+/./g\;s/\-/@/` and they will
be worked on.
