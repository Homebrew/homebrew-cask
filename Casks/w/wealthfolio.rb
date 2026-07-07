cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.1"
  sha256 arm:   "214ea7b9060a114324ab5d1e214ab8d69c89ff6bd68aea638e1b16fe18aec602",
         intel: "e223f3071f79eaa1a023c5e8b3ec484be2a846e5bfe4f3f088d7d6ad917131ac"

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
