cask "thingsmacsandboxhelper" do
  version "3.26"
  sha256 "29e74de692f15e2c1da63c425e3f91637ced39a361457bcb96d1457ea5083b25"

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
