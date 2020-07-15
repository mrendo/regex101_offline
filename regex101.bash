#!/bin/bash

echo "Welcome to the Regex101 downloader for offline use"
if wget -V &> /dev/null; then
  echo "We have wget lets rock!"
  echo "Creating directory's"
  mkdir regex101
  cd regex101/
  mkdir js
  mkdir static
  mkdir static/translations
  echo "Collecting the files"
  wget -q -r --no-host-directories --no-parent http://regex101.com
  wget -q --output-document ./js/javascript.regex101.js http://regex101.com/js/javascript.regex101.js
  wget -q --output-document ./js/pcre.regex101.js http://regex101.com/js/pcre.regex101.js
  wget -q --output-document ./js/pcrelib16.js http://regex101.com/js/pcrelib16.js
  wget -q --output-document ./static/pcreWorker.js http://regex101.com/static/pcreWorker.js
  wget -q --output-document ./static/pcrelib.js http://regex101.com/static/pcrelib.js
  wget -q --output-document ./static/javascriptWorker.js http://regex101.com/static/javascriptWorker.js
  wget -q --output-document ./static/golangWorker.js http://regex101.com/static/golangWorker.js
  wget -q --output-document ./static/translations/english.json http://regex101.com/static/translations/english.json
  wget -q --output-document ./static/sw.js http://regex101.com/static/sw.js
  wget -q --output-document ./static/apple-icon-144x144.png http://regex101.com/static/apple-icon-144x144.png
  echo "You can now host via apache, ngix or any other http server. Here is a python example"
  echo "cd regex101"
  echo "Python 2 - python -m SimpleHTTPServer 8080"
  echo "Python 3 - python3 -m http.server 8080"
else 
   echo "Can't find wget please install it first"  
fi