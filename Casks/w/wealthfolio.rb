cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.11.0"
  sha256 arm:   "58ce3661d6c007ae7c6c4da7d790ad8b56c300222237fa2c48828b5768a0c346",
         intel: "02173e83d27928ef33cdbb56da5733a25f41254ce9e723d0df10e96d31bf8740"

  url "https://github.com/afadil/wealthfolio/releases/download/v#{version}/Wealthfolio_#{version}_#{arch}.dmg"
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
  depends_on macos: :monterey

  app "Wealthfolio.app"

  zap trash: [
    "~/Library/Application Support/com.teymz.wealthfolio",
    "~/Library/Caches/com.teymz.wealthfolio",
    "~/Library/WebKit/com.teymz.wealthfolio",
  ]
end
