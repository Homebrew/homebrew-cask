cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.1"
  sha256 arm:   "b3f031881cd51e9402b41b2a98a8012c6dc8f517ad0ef92427f56b19ce379512",
         intel: "edf3bd85944589b457fd631030df72d3ffbdda3460deac9d1cdc1aa89d95a817"

  url "https://github.com/afadil/wealthfolio/releases/download/v#{version}/Wealthfolio_#{version}_#{arch}.dmg",
      verified: "github.com/afadil/wealthfolio/"
  name "Wealthfolio"
  desc "Investment portfolio tracker"
  homepage "https://wealthfolio.app/"

  livecheck do
    url "https://wealthfolio.app/releases/darwin/#{arch}/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Wealthfolio.app"

  zap trash: [
    "~/Library/Application Support/com.teymz.wealthfolio",
    "~/Library/Caches/com.teymz.wealthfolio",
    "~/Library/WebKit/com.teymz.wealthfolio",
  ]
end
