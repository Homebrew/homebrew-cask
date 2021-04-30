cask "widelands" do
  version "21"
  sha256 "d296642fc9b48e50e087f18b2c7f5697b6a4faf6c6289ab82b31edc0553b4526"

  url "https://launchpad.net/widelands/build#{version}/build#{version}/+download/widelands_10.9_build-#{version}.dmg",
      verified: "launchpad.net/widelands/"
  name "Widelands"
  homepage "https://www.widelands.org/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/widelands_10\.9_build-(\d+)\.dmg}i)
  end

  app "Widelands.app"

  zap trash: "~/.widelands"
end
