### Havasu
LaTeX Beamer Havasu

### Designing a customer Beamer theme from scratch
This repository represents my efforts to [Design a custom Beamer theme from
scratch](https://tex.stackexchange.com/questions/146529/design-a-custom-beamer-theme-from-scratch#146682).
I was inspired by a [tex.stackexchange](https://tex.stackexchange.com/questions/146529/design-a-custom-beamer-theme-from-scratch#146682)
post, and the examples provided.  [beamerports](https://bitbucket.org/marczellm/beamerports/src/master/)
also implemented two [beamer](https://www.ctan.org/pkg/beamer) based on the post.

### My Goals
1. Design the 'Havasu' Beamer theme to mimic the FDA, Fresenius-KABI, and ICU
   Medical presentation page one and page two formats.

2. bin/switchLogo [fda|icu|kabi] renames the logo.

3. Use [vimtex](https://github.com/lervag/vimtex] to continuously compile
   example.tex.

4. Use .bin/switchLogo [fda|icu|kabi] to see presentation update page-one.png
   and page-two.png.

###
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Traap/havasu/master/install.sh)"
```
