#!/bin/bash

WORKING_DIR=`pwd`
GH_PAGES_PATH="${1%/}"

if [ ! -d "${GH_PAGES_PATH}" ]; then
  echo "ERROR! Directory '${GH_PAGES_PATH}' does not exist! Exiting..."
  exit 0
fi

cd $GH_PAGES_PATH
rm -rf *
cp --recursive "${WORKING_DIR}"/src/* .
git checkout CNAME
git checkout robots.txt
git add .
git commit -m "upd"
git push origin gh-pages
cd $WORKING_DIR

echo "Done!"

exit 0
