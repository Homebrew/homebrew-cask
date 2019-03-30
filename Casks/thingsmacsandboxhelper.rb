cask 'thingsmacsandboxhelper' do
  version '3.15'
  sha256 'c1cdb5254ff618418f6cf2a59d2b249e6d4ad0b78ca844cdb157f00362aa5f49'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  appcast 'https://culturedcode.com/things/mac/help/things-sandboxing-helper-things3/'
  name 'ThingsMacSandboxHelper'
  homepage "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things#{version.major}/"

  app 'ThingsMacSandboxHelper.app'
end
