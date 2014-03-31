class Tarball < TestCask
  url TestHelper.local_binary('tarball.tgz')
  homepage 'http://example.com/tarball'
  version '1.2.3'
  sha256 :no_check
  link 'Tarball.app'
end
