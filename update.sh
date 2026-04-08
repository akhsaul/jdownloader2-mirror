#!/bin/sh

cd browser
svn checkout svn://svn.jdownloader.org/jdownloader/browser . --force
svn revert -R .
svn update
rm -rf .git
cd ..

cd MyJDownloaderClient
svn checkout svn://svn.jdownloader.org/jdownloader/MyJDownloaderClient . --force
svn revert -R .
svn update
rm -rf .git
cd ..

cd utils
svn checkout svn://svn.appwork.org/utils . --force
svn revert -R .
svn update
rm -rf .git
cd ..

cd trunk
svn checkout svn://svn.jdownloader.org/jdownloader/trunk . --force
svn revert -R .
svn update
rm -rf .git
cd ..

echo "delete redundant file to make it lightweight"
find . -type f -name "*.zip" | xargs rm -f
find . -type f -name "*.jar" | xargs rm -f