<div align="center">

# longbow.nvim 🏹

*the ultraprecise, uncompromising weapon in your motion arsenal*

https://user-images.githubusercontent.com/44309097/182473181-59d268da-bdf2-4542-883c-38fcce56075d.mov

</div>

## Overview

Longbow is a *visible-editor-area motion* for Neovim that does not use any form
of direct search in its targeting mechanism. Instead, it fills all text
onscreen with character labels in such a way that all consecutive sequences of two
labels are unique ([→ how?](https://en.wikipedia.org/wiki/De_Bruijn_sequence)).
This way, all you need to do is type the character label at the location you'd
like to jump to, and then the character immediately to the right of it, and
you'll be transported right there.

## Features

* Jump with character-precision to emojis and other uneasily-typed characters
* Type two characters, **only and always**, even in dense and repetitive passages

## Caveats

* Not a search-based movement, and therefore little pre-empting available for user to exploit
* Labels may be source of visual noise, requiring nontrivial concentration and decent reaction/typing speed

## Todo

* option to only enable on alphanumeric(-esque) (or non-whitespace) characters (with highlight to help differentiate)
* have a subroutine that alters highlight groups to fade non-alphanumeric characters
* fix bugs with edge cases
