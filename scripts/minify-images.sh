#!/bin/bash

function minify() {
    SRC=$1
    DEST=$2
    SCALE=$3
    echo from $SRC to $DEST scaling $SCALE
    magick $SRC -scale $SCALE -define jpeg:extent=100kb $DEST
}

minify "./public/images/rijk-mugshot-big.jpg" "./public/images/rijk-mugshot.jpg" "20%"