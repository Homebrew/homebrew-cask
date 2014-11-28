cask :v1test => 'invalid-appcast-format' do
  version '1.2.3'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'

  url TestHelper.local_binary_url('caffeine.zip')
  homepage 'http://example.com/invalid-appcast-format'
  appcast 'http://example.com/appcast.xml',
          :sha256 => '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853',
          :format => :no_such_format


  app 'Caffeine.app'
end
