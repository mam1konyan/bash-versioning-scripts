#!/bin/bash

git push

npm publish

echo ''
echo ''
echo ''
echo '👍🏻  New version of Watermark Generator is published'

rm -rf './lib'
