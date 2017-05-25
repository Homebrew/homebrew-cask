cask 'thingsmacsandboxhelper' do
  version '3.4'
  sha256 'cfc9123c3489a56c3807fe311c41618039690085e1023fc888d119e6415bdb80'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  name 'ThingsMacSandboxHelper'
  homepage 'https://culturedcode.com/things/mac/help/things-sandboxing-helper-download/'

  app 'ThingsMacSandboxHelper.app'
end
