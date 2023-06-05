cask "tropy" do
  arch arm: "-arm64"

  version "1.13.1"
  sha256 arm:   "5a189520ce2c51de5d7832073238201521bf6c439ab885447adb247bc8e4eedb",
         intel: "bfa695f3c2b8b99977952433b2dfb16dce8cc751f756a4c3dd8d12d23bc8f05e"

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
