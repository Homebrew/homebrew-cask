cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.7.0"
  sha256 arm:   "66a247c9e0ff234c0a7d7a38cfefc07aa86f2c2e4ca1f1c1bc331b6d01c79031",
         intel: "275c58952d13d521fb43bd60f59f79db31c82c706b136b79d7abedcb7d1fa916"

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
