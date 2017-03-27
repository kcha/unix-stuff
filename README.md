unix_utilities
==============

My collection of miscellaneous Unix-related utility scripts. Mostly written in bash, perl, or python.

Installation
------------
Add the `bin` folder to your `$PATH` variable.

Utilities
---------
 * `colnum` - Determines the column index number of a given column heading
 * `cols` - Counts the number of columns from the first line of the file
 * `hhead` - Similar to head, but show only the first 10 columns
 * `splitstr` - Split a string into individual lines based on a user-supplied delimiter
 * `strlen` - Return the length of a given string
 * `zhead` - Head for gzipped files
 * `zwcl` - Shortcut for counting number of lines in a compressed file

Unit tests
----------
    make test
