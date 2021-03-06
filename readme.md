# Zenity-Pandoc

Simple bash script to convert a text file using pandoc with a zenity-based GUI.

**Requires:**
* POSIX compatible system (e.g. Linux)
* [pandoc](https://pandoc.org/)
* [zenity](https://wiki.gnome.org/Projects/Zenity)

**Installation:** Make script executable

**Run:** `./zenityPandoc.sh` or run `./zenityPandoc.sh path/to/my/file`

**Use:** 
* Select the file you want to convert. 
* Then select a target format. 
* If the file does not exist yet, it will be immediately converted. If it does exist, you will be asked if the file should be overwritten. 

**Future development:**

Currently, I am fine with what it does. I am open to improvements, however, I do not want to add functionality if it makes the use more complicated or adds formats which are rarely needed. 
