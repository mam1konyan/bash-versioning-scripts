#!/bin/bash

git push

npm publish

echo ''
echo ''
echo ''
echo '👍🏻  New version of *YOUR_PACKAGE_NAME* is successfully published'

rm -rf './lib'
