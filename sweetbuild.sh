#!/bin/bash

mkdir build && cd build
msgfmt ../fr.po -o fr.mo
msgfmt ../de.po -o de.mo
msgfmt ../el.po -o el.mo
msgfmt ../ja.po -o ja.mo
msgfmt ../ru.po -o ru.mo
msgfmt ../mt.po -o mt.mo
msgfmt ../ar.po -o ar.mo
msgfmt ../it.po -o it.mo
msgfmt ../nl.po -o nl.mo

echo "You can now use gettext for translate word !"
echo -e 'Example :\necho "\`gettext en-fr computer\`'
