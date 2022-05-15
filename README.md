# Export PDF
By using the pandoc library, you can export a PDF file from a markdown file, I wrote a simple script to do this for me.

## Setup
All in all you need to have pandoc and some other dependencies installed.

### Arch Linux
```bash
sudo pacman -Sy pandoc texlive-fontsextra
```

### Debian
```bash
sudo apt install pandoc texlive texlive-latex-extra -y
```

## Usage
I tried to make this script as simple as possible, so you can just run it from the command line.

```bash
$ ./shellmdpdf.sh README.md README.pdf
```