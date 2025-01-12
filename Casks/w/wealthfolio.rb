cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.23"
  sha256 arm:   "407ef51a73f81d8eb26213dfe8a60eb09bacf9e7962b91f91505b80f272a726d",
         intel: "bd13a5ed563fd28b9af7623d4335297411e16bc77724e10f866c8e1deaffb044"

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
  depends_on macos: ">= :high_sierra"

  app "Wealthfolio.app"

  zap trash: [
    "~/Library/Application Support/com.teymz.wealthfolio",
    "~/Library/Caches/com.teymz.wealthfolio",
    "~/Library/WebKit/com.teymz.wealthfolio",
  ]
end
