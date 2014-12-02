cask :v1test => 'with-depends-on-macos-failure' do
  version '1.2.3'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'

  url TestHelper.local_binary_url('caffeine.zip')
  homepage 'http://example.com/with-depends-on-macos-failure'

  # guarantee a mismatched version
  depends_on :macos => MacOS.version.to_s == '10.0' ? '10.1' : '10.0'

  app 'Caffeine.app'
end
