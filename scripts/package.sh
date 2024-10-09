#!/bin/bash

STAGING="staging"
PACKAGED="packaged.zip"

function stage() {
    target=$1
    cp -r $target $STAGING/$target
}

mkdir $STAGING
stage public
stage index.html
stage styles.css

cd $STAGING
zip -r $PACKAGED ./*
cd ..
mv $STAGING/$PACKAGED ./$PACKAGED
rm -rf $STAGING