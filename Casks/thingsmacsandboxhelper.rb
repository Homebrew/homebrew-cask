cask "thingsmacsandboxhelper" do
  version "3.30"
  sha256 "95ec64d65b20722855f9bced0e6e50f0ef9bcc68b3eac2efec0a5ca6b98a48c1"

  url "https://static.culturedcode.com/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  name "Things Helper"
  desc "Helper application for Things"
  homepage "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things#{version.major}/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/ThingsHelper\.zip}i)
  end

  app "ThingsMacSandboxHelper.app"
end
