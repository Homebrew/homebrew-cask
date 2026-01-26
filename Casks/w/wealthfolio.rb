cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "1d267da755e260a0c98d9b38f7bdd5e8ce67f7508e2d89871eed18f9b2b6e0e0",
         intel: "5d11ba2fcdff4979507c44e35dcfc20cbb597d5a91886950fea709b6ad38de9a"

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
