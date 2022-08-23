cask "tropy" do
  arch arm: "-arm64"

  version "1.12.0"
  sha256 arm:   "d730a8747596a1a6d0c869cadbdc3bdff5ed371e05b205fad6b397dc5a4b872f",
         intel: "ef8e62028cd991ed8e668797035286f4e5220190a9d70591fe7e853be90b862d"

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
