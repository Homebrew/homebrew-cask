cask "tropy" do
  version "1.9.0"
  sha256 "513269f1fd2bfd47c901fbf6b92871fc985b7715b2d90b442c1ed30bed78d5c3"

  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg",
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
