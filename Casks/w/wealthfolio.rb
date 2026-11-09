cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.12.0"
  sha256 arm:   "c74c4798ac687b2964d9d4bd9f8e5fa829bd111fb819c37df87049f1fee2935f",
         intel: "436c1ea4f83ced29e1f59f54236071901304db4c73e7a63c4634f73aba7856ed"

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
    "~/Library/Logs/com.teymz.wealthfolio",
    "~/Library/WebKit/com.teymz.wealthfolio",
  ]
end
