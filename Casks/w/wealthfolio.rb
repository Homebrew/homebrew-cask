cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "2e1fc2420574324ec9b426d719005470a05e23cce5909378806b7a61a8d11dfe",
         intel: "6f119288002653956783b5459a9a13b19bf9018a26acc204e35eeb56cfece620"

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
