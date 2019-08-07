cask 'thingsmacsandboxhelper' do
  version '3.16'
  sha256 '8b9b19ffb406823124bdf60acd0107764d9f5a3e8a98c71f0bd6feb06b38b5d8'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  appcast 'https://culturedcode.com/things/mac/help/things-sandboxing-helper-things3/'
  name 'ThingsMacSandboxHelper'
  homepage "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things#{version.major}/"

  app 'ThingsMacSandboxHelper.app'
end
