cask "thingsmacsandboxhelper" do
  version "3.33"
  sha256 "2ddc5091b216a89f9df7a28ba4b029e2a69f1882e3461ae99e31b2b62ef19ddc"

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
