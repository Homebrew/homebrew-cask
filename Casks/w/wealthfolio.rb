cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.3"
  sha256 arm:   "50c003cebd836e9e207cb76b313872330e155b9136c3c007da17e45237c5106d",
         intel: "96ae9979eb4a8f8c66b940a1539f45116206a750c9c0b55e35a168bc4e5bd112"

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
