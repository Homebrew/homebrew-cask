cask "widelands" do
  version "21"
  sha256 "d296642fc9b48e50e087f18b2c7f5697b6a4faf6c6289ab82b31edc0553b4526"

  # launchpad.net/widelands/ was verified as official when first introduced to the cask
  url "https://launchpad.net/widelands/build#{version}/build#{version}/+download/widelands_10.9_build-#{version}.dmg"
  name "Widelands"
  homepage "https://www.widelands.org/"

  app "Widelands.app"

  zap trash: "~/.widelands"
end
