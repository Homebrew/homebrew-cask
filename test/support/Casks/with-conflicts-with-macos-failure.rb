cask :v1test => 'with-conflicts-with-macos-failure' do
  version '1.2.3'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'

  url TestHelper.local_binary_url('caffeine.zip')
  homepage 'http://example.com/with-conflicts-with-macos-failure'

  # since all OS releases are included, this should always fail
  conflicts_with :macos => [ '10.0', '10.1', '10.2', '10.3', '10.3', '10.5', '10.6', '10.7', '10.8', '10.9', '10.10', MacOS.release.to_s ]

  app 'Caffeine.app'
end
