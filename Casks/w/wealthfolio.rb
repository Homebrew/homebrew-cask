cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.24"
  sha256 arm:   "92e38d90e9e9225196f172be1308c7b5da6eac4bc04e429c64632c9dfe635c67",
         intel: "1d12afd8df0df24b825553e0c8e4ec95280f5636efaec0d57a4ad66105e27d64"

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
