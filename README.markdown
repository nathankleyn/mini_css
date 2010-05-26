Minimise your CSS files using by compressing and combining them into one file.
Reduce HTTP requests, file size, and save bandwidth.
## Installation

    gem install mini_css

## Usage

Using `mini_css` is simple! You can go about it two ways:

  1. You can run it from the command line and use it as part of your deployment
proceedure.
  2. You can use it as a class and use the compressed results as necessary.

### Using `mini_css` from the command line

Using `mini_css` from the command line is too simple:

    mini_css [-o output_file] file_name[, file_name2, ...]

You can compress one CSS file, or compress more than one to mash them together
as one big compress file.

You can specify the location and name of the output file; it defaults to
mini_cssified.css in the current working directory.

### Using `mini_css` as a class

To use `mini_css` as a class, simply require the right files and you're away.

    require 'rubygems'
    require 'mini_css'

    files = [] # Fill this aray with file paths.
    Mini_CSS.compress(files) # mini_css will open them all, compress them, and mash them together