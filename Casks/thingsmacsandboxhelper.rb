cask 'thingsmacsandboxhelper' do
  version '3.20'
  sha256 '0f140b820a77afeb33d449691e8a5e5f1e36b52e48447336dbf4c45eed0da497'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  appcast 'https://culturedcode.com/things/mac/help/things-sandboxing-helper-things3/'
  name 'ThingsMacSandboxHelper'
  homepage "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things#{version.major}/"

  app 'ThingsMacSandboxHelper.app'
end
