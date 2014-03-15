class SvnDownloadTrustCask < TestCask
  url 'http://example.com/trunk/projectdir/subdir', :using => :svn, :trust_cert => true
  homepage 'http://example.com/'
  version '1.2.3'
  sha256 '8c62a2b791cf5f0da6066a0a4b6e85f62949cd60975da062df44adf887f4370b'
  link 'TestCask.app'
end
