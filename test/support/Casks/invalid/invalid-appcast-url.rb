class InvalidAppcastUrl < TestCask
  url TestHelper.local_binary('caffeine.zip')
  homepage 'http://example.com/invalid-appcast-url'
  appcast 1,
          :sha256 => '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853',
          :format => :sparkle
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'
  version '1.2.3'
  app 'Caffeine.app'
end
