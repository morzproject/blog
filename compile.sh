#!/bin/bash

# clear and re-create the out directory
rm -rf dist

pushd .

cd blog_project && hugo

popd

mv blog_project/public dist

mv google92230ceba9ddc401.html dist