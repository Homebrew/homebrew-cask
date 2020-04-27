cask 'thingsmacsandboxhelper' do
  version '3.21'
  sha256 'adcc57f686125fa7670fa9d20193f1704c5eb0eb2c70863257007c785940374c'

  # culturedcode.cachefly.net/ was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  appcast 'https://culturedcode.com/things/mac/help/things-sandboxing-helper-things3/'
  name 'ThingsMacSandboxHelper'
  homepage "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things#{version.major}/"

  app 'ThingsMacSandboxHelper.app'
end
