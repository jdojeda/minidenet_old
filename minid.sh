#!/bin/bash

jekyll --no-server

# minify html

find public/. -name "*.html" | xargs -I '{}' htmlcompressor '{}' -o '{}'

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
MYTMP=/tmp
INSTALL_IN="${DIR}"/public/assets/
GOOGLE_GA_URL=http://www.google-analytics.com/ga.js
GOOGLE_GWF_URL=http://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js
UA="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.3) Gecko/20070309 Firefox/2.0.0.3"
cd $MYTMP
curl --header "Pragma:" -f -s -A "${UA}" -m 1800 --retry 15 --retry-delay 15 --max-redirs 8 -O $GOOGLE_GA_URL
curl --header "Pragma:" -f -s -A "${UA}" -m 1800 --retry 15 --retry-delay 15 --max-redirs 8 -O $GOOGLE_GWF_URL
chmod 644 $MYTMP/ga.js
chmod 644 $MYTMP/webfont.js
cp -r $MYTMP/ga.js $INSTALL_IN
cp -r $MYTMP/webfont.js $INSTALL_IN
cd $OLDPWD

uglifyjs public/assets/webfont.js -o public/assets/webfont.js

rsync -rtzh --progress --delete public/ --rsh='ssh -p7077' dlafuente@198.211.124.43:/srv/www/minid.net/public/

