cask :v1test => 'with-conflicts-with-macos-string' do
  version '1.2.3'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'

  url TestHelper.local_binary_url('caffeine.zip')
  homepage 'http://example.com/with-conflicts-with-macos-string'

  # guarantee a mismatch; should always pass
  conflicts_with :macos => MacOS.release.to_s == '10.0' ? '10.1' : '10.0'

  app 'Caffeine.app'
end
