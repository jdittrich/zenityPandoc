#!/bin/bash

if ! command -v zenity; then
  echo "you need to install zenity to use this script. Exiting."
  exit
fi

if ! command -v pandoc; then
  echo "you need to install pandoc to use this script. Exiting."
  exit
fi


if ! SOURCEFILE=$(zenity --file-selection --title="Choose the file you want to convert using pandoc"); then
  exit
fi

if ! CONVERTTO=$(zenity --list --title="choose target format" --column="Format" --column="Text" \
    odt "Open Document" \
    docx "docx MS Office" \
    mediawiki "mediawiki"\
    markdown "markdown"\
    asciidoc "Ascii Doc"\
    html "html"\
    latex "LaTeX"\
    context "ConTeXt" ); then
  exit
fi

if test -f $SOURCEFILE.$CONVERTTO; then
  if ! OVERWRITE=$(zenity --question --text="File $FILE.$CONVERTTO exists already, overwrite?"); then
    exit
  fi
fi

TARGETFULLPATH=$SOURCEFILE.$CONVERTTO

TARGETNAME=${TARGETFULLPATH##*/}

SOURCENAME=${SOURCEFILE##*/}

pandoc $SOURCEFILE -t $CONVERTTO -o $TARGETFULLPATH

zenity --info --text="Converted $SOURCENAME to format $CONVERTTO , saved as $TARGETNAME";

