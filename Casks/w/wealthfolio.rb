cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.2"
  sha256 arm:   "fe12de9d2bfa470fea339ad06d7cf5e8fe531a511c4551b475eaf3483177d88d",
         intel: "268f55e1b8ebc8ad1054687baa51fa602f216f935e06b6c072e6bbd9f9ee42c9"

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
