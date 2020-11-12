cask "thingsmacsandboxhelper" do
  version "3.23"
  sha256 "c2e0617fc8e62f377187257052a977a87d93e337ae22f00f4e66937dcfdaa377"

  # culturedcode.cachefly.net/ was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  appcast "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things3/"
  name "ThingsMacSandboxHelper"
  desc "Helper application for Things"
  homepage "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things#{version.major}/"

  app "ThingsMacSandboxHelper.app"
end
