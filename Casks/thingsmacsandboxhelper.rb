cask 'thingsmacsandboxhelper' do
  version '3.14'
  sha256 '43daa0e9f093770cbeeff35e2d34925b08a5df688c3f560bdd8ed81d05e6b886'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  name 'ThingsMacSandboxHelper'
  homepage "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things#{version.major}/"

  app 'ThingsMacSandboxHelper.app'
end
