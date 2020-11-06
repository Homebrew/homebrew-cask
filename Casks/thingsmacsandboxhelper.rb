cask "thingsmacsandboxhelper" do
  version "3.22"
  sha256 "513e8a1aac1950a769b69f434655fa60e5110590e745aad4f34da93ff9aa59c8"

  # culturedcode.cachefly.net/ was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  appcast "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things3/"
  name "ThingsMacSandboxHelper"
  homepage "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things#{version.major}/"

  app "ThingsMacSandboxHelper.app"
end
