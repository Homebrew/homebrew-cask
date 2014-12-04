cask :v1test => 'with-depends-on-macos-comparison' do
  version '1.2.3'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'

  url TestHelper.local_binary_url('caffeine.zip')
  homepage 'http://example.com/with-depends-on-macos-comparison'

  depends_on :macos => '>= 10.0'

  app 'Caffeine.app'
end
