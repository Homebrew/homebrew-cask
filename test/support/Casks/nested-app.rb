cask :v1test => 'nested-app' do
  version '1.2.3'
  sha256 'fbc71e481b048f56d6e62fa5da9658b6a7e34d1aeae0b9ff90ae67a605117b4b'

  url TestHelper.local_binary_url('NestedApp.dmg.zip')
  homepage 'http://example.com/nested-app'

  container :nested => 'NestedApp.dmg'
  app 'MyNestedApp.app'
end
