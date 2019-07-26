#!/usr/bin/python
from __future__ import print_function
import sys
import cgi
try:  # Python 3
  from urllib.request import Request, urlopen
except NameError:  # Python 2
  from urllib2 import Request, urlopen


url = sys.argv[1]
headers = {'User-Agent': 'Mozilla'}
if len(sys.argv) > 2:
    ua = sys.argv[2]
    headers = {'User-Agent': ua}

try:
    req = Request(url, None, headers)
    response = urlopen(req)
    redir = response.geturl()
except Exception:
    import traceback
    redir = 'generic exception: ' + traceback.format_exc()

print(redir)
