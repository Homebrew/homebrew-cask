cask 'thingsmacsandboxhelper' do
  version '3.9'
  sha256 '844273f52b848b8417d72de2ab3bc1a86beadf0c986b706ac2d09087ab0585aa'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  name 'ThingsMacSandboxHelper'
  homepage "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things#{version.major}/"

  app 'ThingsMacSandboxHelper.app'
end
