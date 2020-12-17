cask "thingsmacsandboxhelper" do
  version "3.25"
  sha256 "e3574a1e02abd56920310ca0da536d6e7a6081d98a7db762f31aa0762372027a"

  url "https://culturedcode.cachefly.net/things/thingssandboxhelper/#{version}/ThingsHelper.zip",
      verified: "culturedcode.cachefly.net/"
  appcast "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things3/"
  name "ThingsMacSandboxHelper"
  desc "Helper application for Things"
  homepage "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things#{version.major}/"

  app "ThingsMacSandboxHelper.app"
end
