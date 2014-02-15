class SvnDownloadCask < TestCask
  url 'http://example.com/trunk/projectdir/subdir', :using => :svn
  homepage 'http://example.com/'
  version '1.2.3'
  sha1 '9fbff30e151d9e662ed30acf51f1d374d3282ea0'
  link 'TestCask.app'
end
