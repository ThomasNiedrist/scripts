#!/bin/bash
for f in $(find . -name '*.pdf')
do
    echo $f
    qpdf --encrypt $1 $1 256 -- --replace-input $f
done
