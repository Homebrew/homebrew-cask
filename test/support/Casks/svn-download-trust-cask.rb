class SvnDownloadTrustCask < TestCask
  url 'http://example.com/trunk/projectdir/subdir', :using => :svn, :trust_cert => true
  homepage 'http://example.com/'
  version '1.2.3'
  sha1 '39f3444fcb5d49618c2d62dd7b34304ea5f97a3a'
  link 'TestCask.app'
end
