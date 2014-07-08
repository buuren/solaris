#This file contains random crazy forms of grep/ggrep/egrep/find/awk usage.
#Tested on solaris (version in wiki)


find . -type f ! -name '~' | xargs ggrep -shEIo 'http://(\w+).(\w+).(\w+)' | egrep -vi 'w3|aol|infoaccess|stellent|webworks|apache|unicode|anyname|oracle|adobe|anyname|info.com|sun.com|mycompany|userpc|microsoft|mysite|mydomain|mywebsite|autonomy|myproxy|autodesk|lizardtech|iana|myhostname|mozilla|gnu|fckeditor|macromedia|proxy|filext|fastsearch|handmadesw|webdav|webmaster|xmlsoap|mycomputer|ephox|outsideinsdk|yourserver|youserver|zerotouch|android' | uniq
