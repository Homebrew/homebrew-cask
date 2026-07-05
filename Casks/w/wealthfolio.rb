cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.0"
  sha256 arm:   "73ee6c3523dec43d47b93cbcf962e4898e8b5fdd7474a81867fb77f403cfdac1",
         intel: "aab06c87597d5b0696c7f30bbefae2d9ffbe0fea24cc0a0cde45a3d96239d7a0"

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
