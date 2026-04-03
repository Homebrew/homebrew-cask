cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "d9c7ac5c4e6c93908a61a44c51579dfe3b05f6bbc9f45c43e237888b5104d6cf",
         intel: "c587b252c885fc1f383de1005503dc7481682e850e96b7764428196671bb9045"

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
