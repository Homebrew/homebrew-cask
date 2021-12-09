cask "tropy" do
  version "1.11.0"
  sha256 "c51d01439a6549651ef0e670bf52d68bc728f9f333ee8ad389bd959667d6a65a"

  url "https://github.com/tropy/tropy/releases/download/v#{version}/tropy-#{version}-arm64.dmg",
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
    "~/Library/Caches/Tropy",
    "~/Library/Caches/org.tropy.tropy",
    "~/Library/Caches/org.tropy.tropy.ShipIt",
    "~/Library/Logs/Tropy",
    "~/Library/Preferences/org.tropy.tropy.plist",
    "~/Library/Saved Application State/org.tropy.tropy.savedState",
  ]
end
