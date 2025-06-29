cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.5"
  sha256 arm:   "d3303b51512c47702f2069ec27f9f377996688fba66cc3239b21ef1ddbd79bed",
         intel: "4e224e49825a6b89a24ab94da0aaea6521280d67a7e2e2405db288bfcdd83434"

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
