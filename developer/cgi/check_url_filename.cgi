#!/usr/bin/python
import cgi
import urllib2


form = cgi.FieldStorage()
url = form.getvalue("url", "")
ua = form.getvalue("user_agent", "Mozilla")

try:
    headers = {'User-Agent': ua}
    req = urllib2.Request(url, None, headers)
    response = urllib2.urlopen(req)
    _, params = cgi.parse_header(
        response.headers.get('Content-Disposition', ''))
    filename = params['filename']
except Exception:
    import traceback
    filename = 'generic exception: ' + traceback.format_exc()

print "Content-type: text/html"
print

print """
<html>
<head><title></title></head>
<body>
  %s

</body>
</html>
""" % cgi.escape(filename)
