#! /usr/bin/env bash

BUILD=./build/
TARGET=/home/raoul/ENIGMA/homepage_update/enigma/

set -e -o pipefail

# Remove old build
rm -rf $BUILD
mkdir $BUILD

# Clone and build
git clone . $BUILD
(
    cd $BUILD;
    commit=$(git rev-parse HEAD);
    # TODO: put git id into footer
    chmod u+x main.lua;
    lua5.1 main.lua;
)

# Copy over
rsync -av --exclude='.git' --exclude='input' --exclude='gfx-templates' $BUILD/* $TARGET

# Commit into cvs
(
    cd $TARGET
    pwd
    #cvs add ./*
    #cvs commit -m "Update"
)
