# Pascha
Pascha is a simple shell script to calculate and display the date of Pascha
(Easter).

## Installation

``` sh
git clone https://gitlab.com/cmmescher/pascha
cd pascha
sudo make install
```

For users of **Arch**-based distributions, Pascha is available on the AUR as [pascha-git](https://aur.archlinux.org/packages/pascha-git).

## Dependencies

- `sh` (any POSIX compatible shell will work, such as `dash`) -- run the script.
- `date` (with POSIX options, GNU `coreutils` extensions not necessary) -- get
  current date information and convert dates.

## Usage

`pascha` prints out the date of Pascha (Easter). By default it prints the date
of Pascha for the current year, calculated and displayed using the Julian
calendar. It has no required arguments or options.

If the `-R` option is given then the date will be displayed using the Revised
Julian calendar (which is the same as the Gregorian until 28 February 2800)
instead, but still calculated using the Julian calendar. With `-g` the date will
be both calculated and displayed using the Gregorian calendar. The `-j` option
has the default behavior, using the Julian calendar both for display and
calculation.

`pascha` will calculate the date of Pascha using the calendar specified by `-j`
or `-g` which use the Julian or Gregorian calendars respectively. If both or
neither are given, then `pascha` will default to using the Julian calendar.

`pascha` will display the calculated date using the calendar specified by `-J`,
`-R`, or `-G` which use the Julian, Revised Julian, or Gregorian calendars
respectively. If more than one is given, then the Julian calendar will take
precedence, followed by the Revised Julian. If none is given, then `pascha` will
default to using the Julian calendar for display when the Julian calendar is
used for calculation and the Gregorian calendar for display when the Gregorian
calendar is used for calculation.

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

`pascha` can also use a custom separator for date output with the `-S`
option. By default `pascha` will use `-` as a separator.

Please see `man pascha` for more information.

## Compatibility

Pascha has only been tested on GNU+Linux systems. It may work on MacOS, BSD,
or other Unix-like operating systems, but it may not. If you do get it to run on
any of these, please let me know, so this can be updated.

## Version

- v2.1
Released October 27th, 7531 (2022) O.S. (November 9th, 2022 N.S.).

- v2.0
Released May 19th, 7529 (2021) O.S. (June 1st, 2021 N.S.) during Paschaltide.

- v1.3
Released June 10th, 7528 (2020) O.S. (June 23rd, 2020 N.S.).

- v1.2, 1.1, 1.0
First released publicly on Pascha 7528 (2020) (April 19, 2020 N.S.).

## Author

Written by Christopher Michael Mescher orginally in 2020.

## Copyright and License

Copyright © 2020, 2021, 2022 Christopher Michael Mescher.

License [GPLv3+](https://gnu.org/licenses/gpl.html).

## Project status

The project is mostly complete. No new features are planned, but bugs can be
reported to `echo \<pascha-mescher+faith\>|sed s/\+/./g\;s/\-/@/` and they will
be worked on.

## Changelog

- v2.1
  - Fix incorrect calendar for calculation when both Julian calculation (`-j`) and Gregorian display (`-G`) are given.

- v2.0
  - Near total rewrite of internals, especially the calendar conversion
    mechanisms.
  - Bugfixes (found and corrected relating to conversion mechanism rewrite).
    - e.g. output off by 1 when using `-d` or `-D` in certain years such as 2002
      or 2005.
  - Changed interface to separate specification of calendar for calculation and
    calendar for display.
    - `-j` and `-g` are now used to specify the calendar for calculation.
    - `-J` as well as new flags `-R` and `-G` are now used to specify the
      calendar for display.
    - The old behavior of `-j` and `-g` are preserved because when no output
      calendar is specified, `pascha` defaults to using the calendar given for
      calculation.
    - The behavior when no options are given is also preserved, as `pascha`
      defaults to using the Julian calendar for calculation (and thus for
      display as well).
    - The `-J` flag **now behaves differently**. Now it specifies using the
      Julian calendar for display, whereas before it specified using the Julian
      calendar for calculation and the Revised Julian calendar (in intention,
      but actually the Gregorian) for display. To emulate the old behavior `-jG`
      should now be used for Julian calculation and Gregorian display. To get
      the behavior previously intended (but not possible beyond a certain range)
      use `-jR` (or just `-R` with `-j` implied) for Julian calculation and
      Revised Julian display (in any date range).
  - Added option `-S` to specify the separator used for date output.
  - Added BSD and MacOS compatibility without a workaround.
    - Removed the dependency on GNU's version of the `date` program. Only the
      POSIX `date` is now necessary.
  - Removed the dependency on `bash`. Now any POSIX compliant shell should work.

- v1.3
  - Adding BSD and MacOS compatibility with a workaround.
