Regex101.com Offline
========================

Use regex101.com offline

# Introduction

I'm not affiliated with regex101.com, but credit to @firasdib ([github](https://github.com/firasdib/Regex101)) for creating a amazing tool


#### Wget 

##### OS x
```brew install wget```

##### Linux 

###### Debian based
```sudo apt-get install wget```

###### RPM based
```sudo yum install -y wget```
```sudo dnf install -y wget```

###### PACMan based
 ```sudo pacman -S```

##### Windows
Please download wget from this location

[ Windows](http://gnuwin32.sourceforge.net/packages/wget.htm).

#### Http server

Python comes pre-installed on most Linux distributions and OSX and can be installed in windows (<link>), and it's very easy to create a http server with:

```cd regex101```

Python 2
```
python -m SimpleHTTPServer 8080
```

Python 3
```
python3 -m http.server 8080
```

### Commands

If you only want to save regex101 you just have to paste these lines :

```
  mkdir regex101
  cd regex101/
  mkdir js
  mkdir static
  mkdir static/translations
  wget -r --no-host-directories --no-parent http://regex101.com
  wget --output-document ./js/javascript.regex101.js http://regex101.com/js/javascript.regex101.js
  wget --output-document ./js/pcre.regex101.js http://regex101.com/js/pcre.regex101.js
  wget --output-document ./js/pcrelib16.js http://regex101.com/js/pcrelib16.js
  wget --output-document ./static/pcreWorker.js http://regex101.com/static/pcreWorker.js
  wget --output-document ./static/pcrelib.js http://regex101.com/static/pcrelib.js
  wget --output-document ./static/javascriptWorker.js http://regex101.com/static/javascriptWorker.js
  wget --output-document ./static/golangWorker.js http://regex101.com/static/golangWorker.js
  wget --output-document ./static/translations/english.json http://regex101.com/static/translations/english.json
  wget --output-document ./static/sw.js http://regex101.com/static/sw.js
  wget --output-document ./static/apple-icon-144x144.png http://regex101.com/static/apple-icon-144x144.png
``` 
### Script

You can find a script here : [downloadscript](https://raw.githubusercontent.com/mrendo/regex101_offline/master/regex101.bash) 

```wget -O - https://raw.githubusercontent.com/mrendo/regex101_offline/master/regex101.bash | bash```