#! /usr/bin/env bash

BUILDDIR="./build/"
TARGETDIR="/home/raoul/ENIGMA/homepage_update/enigma/"

set -e -o pipefail


# Remove old build
rm -rf $BUILDDIR
mkdir $BUILDDIR


# Clone and build
git clone . $BUILDDIR
(
    cd $BUILDDIR;
    commit=$(git rev-parse HEAD);
    # TODO: put git id into footer
    chmod u+x main.lua;
    lua5.1 main.lua;
)


# Copy over
rsync -av --exclude='.git' --exclude='input' --exclude='gfx-templates' --exclude='build' $BUILDDIR/* $TARGETDIR


# Commit into cvs
(
    cd $TARGETDIR
    #cvs add ./*
    #cvs commit -m "Update"
)
