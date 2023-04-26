#!/bin/bash

VERSION='5.2.3'

wget "https://github.com/twbs/bootstrap/archive/v$VERSION.zip"
unzip "v$VERSION.zip"
mv "bootstrap-$VERSION/scss" "_sass/bootstrap"
rm -r "v$VERSION.zip" "bootstrap-$VERSION"

wget "https://cdn.jsdelivr.net/npm/bootstrap@$VERSION/dist/js/bootstrap.bundle.min.js" -O "assets/js/bootstrap.bundle.min.js"
