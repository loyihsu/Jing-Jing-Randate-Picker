# Jing-Jing Randate Picker

Pick a date for Jing-Jing (my friend)!

## How it works?

* The dates in the year are mapped with an array.
* The input date string would be parsed to find out the starting and ending number for the random number generator.
* The random number generator picks a number between the starting and ending index, indicating the date picked.
* The date is then translated into the date form.
* **The Picker only works in the same year with a continous range.** Leap year can be switched on with the  `leapyear` Bool.

## How to run it?

To run this Swift playground, you would need a macOS running device with a version of Xcode that supports Swift 5.

## License

This playground is licensed under the MIT License. You can modify it to fit your needs.

