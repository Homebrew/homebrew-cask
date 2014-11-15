class NoChecksum < TestCask
  version '1.2.3'
  sha256 :no_check

  url TestHelper.local_binary_url('caffeine.zip')
  homepage 'http://example.com/local-caffeine'

  app 'Caffeine.app'
end
