#! /bin/bash

# Bundles the files in this repository up for release.
#
# Usage: ./scripts/make-release.sh <VERSION>
#
# The resulting release package will be in release/preview/<PACKAGE>/<VERSION>.


VERSION=$1

if [ -z "$VERSION" ];
then
    echo "You need to specify a version number."
    exit 1
fi

RELEASE_DIR=release/preview/bananote/$VERSION

# Put together release
rm -rf $RELEASE_DIR
mkdir -p $RELEASE_DIR/template

cp lib.typ $RELEASE_DIR/lib.typ
cp README.md $RELEASE_DIR/README.md
cp LICENSE $RELEASE_DIR/LICENSE
cp template/thumbnail.png $RELEASE_DIR/
cp template/blank.typ $RELEASE_DIR/template/main.typ

# replace version in typst.toml
sed "s/VERSION/$VERSION/g" template/typst-template.toml > $RELEASE_DIR/typst.toml

echo "Package is ready for release in $RELEASE_DIR."