class Tarball < TestCask
  version '1.2.3'
  sha256 :no_check

  url TestHelper.local_binary_url('tarball.tgz')
  homepage 'http://example.com/tarball'

  app 'Tarball.app'
end
