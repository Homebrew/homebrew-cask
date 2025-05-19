cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "c23caf834d15d4576a14d563684693f05765ca93a9fdf967d8eb27d058e9e68c",
         intel: "3772b8091060e39327f3a7bc94f86a5560c86f3548cae7f0af072b62e463b03f"

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
