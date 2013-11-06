class Tarball < TestCask
  url TestHelper.local_binary('tarball.tgz')
  homepage 'http://example.com/tarball'
  version '1.2.3'
  no_checksum
  link 'Tarball.app'
end
