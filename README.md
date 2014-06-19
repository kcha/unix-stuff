unix-utilities
==============

My collection of miscellaneous Unix-related utility scripts. Mostly written in bash, perl, or python.

Installation
------------
    make install

This just copies scripts from src/ folder to bin/.

Utilities
---------
 * `colnum` - Determines the column index number of a given column heading
 * `cols` - Counts the number of columns from the first line of the file
 * `splitstr` - Split a string into individual lines based on a user-supplied delimiter
 * `strlen` - Return the length of a given string
 * `zwcl` - Shortcut for counting number of lines in a compressed file

Unit tests
----------
    make test
