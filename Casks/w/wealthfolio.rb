cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.2"
  sha256 arm:   "5c64f4ec0e816e59c129b8607b6ccc6c398f4843c07da4fb43a9e06f5361155f",
         intel: "00d22ef9709ae74377edf8f284b2c8fdc4639d26d8cb6139259c1f4db591c82c"

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
