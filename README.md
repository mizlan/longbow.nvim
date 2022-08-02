# longbow.nvim 🏹


https://user-images.githubusercontent.com/44309097/182473181-59d268da-bdf2-4542-883c-38fcce56075d.mov

*the ultraprecise, uncompromising visible-editor-area motion*

## Features

* Jump with character-precision to emojis and other uneasily-typed characters
* Type two characters, **only and always**, even in dense and repetitive passages
* Uses [de Bruijn sequences](https://en.wikipedia.org/wiki/De_Bruijn_sequence)!

## Caveats

* Not a search-based movement, and therefore little pre-empting available for user to exploit
* Labels may be source of visual noise, requiring nontrivial concentration
* This plugin's effectiveness is limited by your reaction speed and typing speed

## Todo

* option to only enable on alphanumeric(-esque) (or non-whitespace) characters (with highlight to help differentiate)
* have a subroutine that alters highlight groups to fade non-alphanumeric characters
* fix bugs with edge cases
