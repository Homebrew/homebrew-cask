class NoChecksum < TestCask
  url TestHelper.local_binary_url('caffeine.zip')
  homepage 'http://example.com/local-caffeine'
  version '1.2.3'
  sha256 :no_check
  app 'Caffeine.app'
end
