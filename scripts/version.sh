#!/bin/bash
git add .
git commit -m 'pck(src): Update project version'

VERSION=''

echo ''
echo ''
echo '======================================================================================================='

options=("🪲 Bugfix" "🛠️  Enhancement" "🚀 Feature")
echo ''
PS3='What type of changes are you publishing? Please select an option number from above ☝️  : '
select opt in "${options[@]}"
do
    case $opt in
        "🪲 Bugfix")
            VERSION='patch'
            echo "You are publishing a Bugfix 🪲  "
            break
            ;;
        "🛠️  Enhancement")
            VERSION='minor'
            echo "You are publishing an Enhancement 🛠  "
            break
            ;;
        "🚀 Feature")
            VERSION='major'
            echo "You are publishing a Feature 🚀  "
            break
            ;;
    esac
done

echo ''
echo ''
echo '======================================================================================================='

npm version "$VERSION"
