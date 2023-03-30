cask "tropy" do
  arch arm: "-arm64"

  version "1.13.0"
  sha256 arm:   "ba589ff69c43d80eea4615e8a23f0a4ad4b2da22a820bffa9a95acf9866e02d9",
         intel: "8c94ae5e2dd93065cc7ce8af61a5f58a36b65251fe69e51ec10b2f114d2d5a42"

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
