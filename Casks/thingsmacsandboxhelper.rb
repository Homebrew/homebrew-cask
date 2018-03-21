cask 'thingsmacsandboxhelper' do
  version '3.11'
  sha256 'ae0face6c56b8da9aceaf157176d7ef2d4492be65471687740761b6b142e310c'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  name 'ThingsMacSandboxHelper'
  homepage "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things#{version.major}/"

  app 'ThingsMacSandboxHelper.app'
end
