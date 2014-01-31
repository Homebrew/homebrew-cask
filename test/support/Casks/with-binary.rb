class WithBinary < TestCask
  url TestHelper.local_binary('AppWithBinary.zip')
  sha1 '72de271c9215732374dff1c91a58e1205f116d0d'
  homepage 'http://example.com/with-binary'
  version '1.2.3'
  link 'App.app'
  binary 'binary'
end
