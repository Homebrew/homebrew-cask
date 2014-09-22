class WithTwoAppsIncorrect < TestCask
  url TestHelper.local_binary_url('caffeine.zip')
  homepage 'http://example.com/local-caffeine'
  version '1.2.3'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'
  app 'Caffeine.app', 'Caffeine.app/Contents/MacOS/Caffeine'
end
