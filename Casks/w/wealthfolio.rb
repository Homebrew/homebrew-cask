cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.1"
  sha256 arm:   "0538e9ea5aacf31584f3c3ccbff1d8abd62c60bb0a85e4c081d9df18b47f16f5",
         intel: "d6161568b88bb397c949ab0d25d8aef6692f67df91388a008524f7017ceaceea"

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
