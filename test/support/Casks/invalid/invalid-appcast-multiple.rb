test_cask 'invalid-appcast-multiple' do
  version '1.2.3'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'

  url TestHelper.local_binary_url('caffeine.zip')
  appcast 'http://example.com/appcast1.xml',
          sha256: '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'
  appcast 'http://example.com/appcast2.xml',
          sha256: '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'
  homepage 'http://example.com/invalid-appcast-multiple'

  app 'Caffeine.app'
end
