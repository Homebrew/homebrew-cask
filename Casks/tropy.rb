cask "tropy" do
  version "1.8.2"
  sha256 "68780c6f482524d84f88eecf6bed8271f3f26f1c6b8bf737484d3b20c6944fae"

  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg",
      verified: "github.com/tropy/tropy/"
  appcast "https://github.com/tropy/tropy/releases.atom"
  name "Tropy"
  desc "Research photo management"
  homepage "https://tropy.org/"

  app "Tropy.app"

  zap trash: [
    "~/Library/Application Support/Tropy",
    "~/Library/Caches/Tropy",
    "~/Library/Caches/org.tropy.tropy",
    "~/Library/Caches/org.tropy.tropy.ShipIt",
    "~/Library/Logs/Tropy",
    "~/Library/Preferences/org.tropy.tropy.plist",
    "~/Library/Saved Application State/org.tropy.tropy.savedState",
  ]
end
