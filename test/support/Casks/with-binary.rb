class WithBinary < TestCask
  url TestHelper.local_binary_url('AppWithBinary.zip')
  homepage 'http://example.com/with-binary'
  sha256 'd5b2dfbef7ea28c25f7a77cd7fa14d013d82b626db1d82e00e25822464ba19e2'
  version '1.2.3'
  app 'App.app'
  binary 'binary'
end
