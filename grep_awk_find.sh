#This file contains random crazy forms of grep/ggrep/egrep/find/awk usage.
#Tested on solaris (version in wiki)

#-----------------------------------------------------------------------------------------------------------------------------------
#fine all files (type=file), which don't have '~' in the same.
find . -type f ! -name '~' | \
#execute ggrep for each file" 
#-s silent, don't print errors 
#-h dont show file name
#-E use extended regular expression
#-I ignore binary files
#-i ignore case-sensitive
#-o only print match results, not entire line
xargs ggrep -shEIo 'http://(\w+).(\w+).(\w+)' | \
#second grep to filter and exclude results from first grep
#-v invert match, eg "show all but those" (this is how we exclude stuff)
#-i incase sens
egrep -vi 'w3|aol|infoaccess|stellent|webworks|apache|unicode|anyname|oracle|adobe|anyname| \
info.com|sun.com|mycompany|userpc|microsoft|mysite|mydomain|mywebsite|autonomy|myproxy|autodesk |\
lizardtech|iana|myhostname|mozilla|gnu|fckeditor|macromedia|proxy|filext|fastsearch|handmadesw| \
webdav|webmaster|xmlsoap|mycomputer|ephox|outsideinsdk|yourserver|youserver|zerotouch|android' \
#uniq. Note: it will sort unique results only within the same file (not globally)
| uniq
#-----------------------------------------------------------------------------------------------------------------------------------
