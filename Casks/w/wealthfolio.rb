cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "ab8bf53dd407f5a5980431ad15e0973742be7f2467e02f3db4c32623d8655e06",
         intel: "cdd0797e9590aefe3ca6d636cdf022c6a78cb55e260d9eab085c96cdcf359318"

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
