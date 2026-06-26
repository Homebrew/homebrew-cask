cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.3"
  sha256 arm:   "fe66d75ef7d36fe500404d61622496dec780d9e7a34b0efeae42863b1dcc9bf8",
         intel: "c82c9c52a5f196de23e8a9f5a2ea232b8b31c9f02de06d4d796d67af36f33dd3"

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
