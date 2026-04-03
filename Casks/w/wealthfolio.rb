cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.2.1"
  sha256 arm:   "24757eaf3770df55684707a6dfdff106c4403d367461eddb235b38bd3d3f5ae8",
         intel: "150d567900230e58bcb819dc084084556de0c847b4732d5acacaeb73245dd8c4"

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
