#!/usr/bin/python
import sys
import cgi
import urllib2


url = sys.argv[1]

try:
	response = urllib2.urlopen(url)
	redir = response.geturl()
except Exception:
	import traceback
	redir = 'generic exception: ' + traceback.format_exc()

print redir
