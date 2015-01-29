cask :v1test => 'with-conflicts-with-cask-array' do
  version '1.2.3'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'

  url TestHelper.local_binary_url('caffeine.zip')
  homepage 'http://example.com/with-conflicts-with-cask-array'

  conflicts_with :cask => [ 'local-caffeine', 'local-transmission' ]

  app 'Caffeine.app'
end
