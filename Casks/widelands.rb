cask "widelands" do
  version "1.0"
  sha256 "1b690a7b001b16aab5bf5685b89714e2c02c6866914aba8ad5bde103f2ead789"

  url "https://launchpad.net/widelands/#{version.major}.x/#{version}/+download/widelands_10.9_#{version}.dmg",
      verified: "launchpad.net/widelands/"
  name "Widelands"
  desc "Free real-time strategy game like Settlers II"
  homepage "https://www.widelands.org/"

  livecheck do
    url "https://www.widelands.org/wiki/Download/"
    regex(/href=.*?widelands[._-]10\.9[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Widelands.app"

  zap trash: "~/.widelands"
end
