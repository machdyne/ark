#!/bin/bash

BUILD=$PWD/build
ARK=$PWD/ark
DATA=$PWD/data

mkdir -p $BUILD
mkdir -p $ARK

# Fetch and merge the LFS objects for this repo
git lfs pull

# Wikipedia 2008 "Vital" Ark Snapshot
tar -Jxvf data/wiki2008.txz -C $ARK

# Project Gutenberg 2003 CDROM
mkdir -p $ARK/gutenberg
mkdir -p $ARK/gutenberg/cdrom
wget -nc -O $BUILD/PG.zip https://www.gutenberg.org/files/11220/PG2003-08_files.zip
7z x -y -o$ARK/gutenberg/cdrom $BUILD/PG.zip
mv $ARK/gutenberg/cdrom/pg/* $ARK/gutenberg/cdrom
rmdir $ARK/gutenberg/cdrom/pg
cp $DATA/pgcdrom.lst $ARK/gutenberg/cdrom

# The 2010 CIA World Factbook with images
mkdir -p $ARK/gutenberg/cia
wget -nc -P $ARK/gutenberg/cia https://www.gutenberg.org/files/35830/35830.txt
wget -nc -P $BUILD/ciaimg.zip https://www.gutenberg.org/files/35830/35830-images.zip
7z x -y -o$ARK/gutenberg/cia $BUILD/ciaimg.zip
