#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd $DIR

echo "================================================"
echo "插件更新"
dpkg-scanpackages debs / > Packages
bzip2 -fks Packages
git add .
git commit -am "插件更新"
git push
echo "================================================"
exit 0