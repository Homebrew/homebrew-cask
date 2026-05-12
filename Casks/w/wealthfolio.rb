cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.3.0"
  sha256 arm:   "1c161e7e0c03c2fb74ab893b09843bafc4667000334c150491568d09bbebb227",
         intel: "69d59cacd01bfc8c8330a178ed9791a421cd13d07979009ccad23d4586ba6b84"

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
