#!/usr/bin/python
import cgi
import urllib2


form = cgi.FieldStorage()
url = form.getvalue("url", "")
try:
	response = urllib2.urlopen(url)
	redir = response.geturl()
except Exception:
	import traceback
	redir = 'generic exception: ' + traceback.format_exc()

print "Content-type: text/html"
print

print """
<html>
<head><title></title></head>
<body>
  %s

</body>
</html>
""" % cgi.escape(redir)
