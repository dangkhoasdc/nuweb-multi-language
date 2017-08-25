This is a mirror of http://www.vim.org/scripts/script.php?script_id=2746

Almost entirely derived from by Patricio Toledo's original syntax file (http://www.vim.org/scripts/script.php?script_id=543) which highlits NUWEB scraps without any language-dependent syntax highlighting. I modified it in the following ways:
1) Scraps beginning with "@{/* C */" will be highlit as C
2) Scraps beginning with "@{# Python" will be highlit as Python.
3) For all other scraps, the opening "@{" must be followed by a newline.

It's very easy to extend this syntax file to handle other languages. If someone else could fix #3, so that "@{anything@}" scraps could work without a newline following "@{", I'd appreciate it. Also, other ideas on doing multi-language highlighting are welcome.


# 2017 Version

This is my personal modification. My goals are to add more programming languages and some cool features.

# TODO 

- [ ] Support `cpp`.
