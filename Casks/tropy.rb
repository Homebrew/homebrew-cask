cask "tropy" do
  arch arm: "-arm64"

  version "1.14.0"
  sha256 arm:   "58c0d3cce8732c62b547198d3074054ee5ce4c54382ebdbeb371bb3c8fba0358",
         intel: "d5b6abff582d19b0bdd55ed9a2678697926d139f13b981174ebe1a1fe7f076bf"

  url "https://github.com/tropy/tropy/releases/download/v#{version}/tropy-#{version}#{arch}.dmg",
      verified: "github.com/tropy/tropy/"
  name "Tropy"
  desc "Research photo management"
  homepage "https://tropy.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tropy.app"

  zap trash: [
    "~/Library/Application Support/Tropy",
    "~/Library/Caches/org.tropy.tropy.ShipIt",
    "~/Library/Caches/org.tropy.tropy",
    "~/Library/Caches/Tropy",
    "~/Library/Logs/Tropy",
    "~/Library/Preferences/org.tropy.tropy.plist",
    "~/Library/Saved Application State/org.tropy.tropy.savedState",
  ]
end
