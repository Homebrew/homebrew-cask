cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.14"
  sha256 arm:   "813f9074659d7eb716e812a9bd7af708d261d60a4ff2b4a68e7f582bca163402",
         intel: "0bef1e5b3442c2f14898b548b376d8286cc298ee5bd374616c0cf0434de4978f"

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
