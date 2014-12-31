cask :v1test => 'with-conflicts-with' do
  version '1.2.3'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'

  url TestHelper.local_binary_url('caffeine.zip')
  homepage 'http://example.com/with-conflicts-with'

  conflicts_with :formula => 'unar'
  app 'Caffeine.app'
end
