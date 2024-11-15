cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.21"
  sha256 arm:   "39b54fa51a2a40fb4615f5edf1a35fe6e2af4d0f3b280461c7c295b02b0f1176",
         intel: "a6f8f5aa338eda0ce890ddf0d3cb35f540c5f00d2d272e53ff133bd9a31f2e88"

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
