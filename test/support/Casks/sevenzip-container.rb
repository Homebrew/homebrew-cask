class SevenzipContainer < TestCask
  url TestHelper.local_binary('sevenzipcontainer.7z')
  homepage 'http://example.com/sevenzip-container'
  version '1.2.3'
  sha1 '469d33b6e499096c325af907b05c4f37274ca3fb'
  depends_on_formula 'unar'
  link 'sevenzipcontainer/Application.app'
end
