#!/usr/bin/python
import sys
import cgi
import urllib2


url = sys.argv[1]
headers = {'User-Agent' : 'Mozilla'}
if len(sys.argv) > 2:
	ua = sys.argv[2]
	headers = { 'User-Agent' : ua }

try:
	req = urllib2.Request(url, None, headers)
	response = urllib2.urlopen(req)
	redir = response.geturl()
except Exception:
	import traceback
	redir = 'generic exception: ' + traceback.format_exc()

print redir
