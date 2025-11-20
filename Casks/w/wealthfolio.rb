cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "d79dc8e07ecea76f78764e57f0a3cc8ce0a063d8364fa0461dfcc350eb701440",
         intel: "8400c218cdd5229fe1f10cc3466a80fd2cfe3b627a2f679e4e2c9d18c1696965"

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

  app "Wealthfolio.app"

  zap trash: [
    "~/Library/Application Support/com.teymz.wealthfolio",
    "~/Library/Caches/com.teymz.wealthfolio",
    "~/Library/WebKit/com.teymz.wealthfolio",
  ]
end
