cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.18"
  sha256 arm:   "b5d9794c5d9ab75c55d2145026348966d821c358dce7ee0b7d15b83332d0fb4b",
         intel: "d044e29bc9c46f7ae1f0945a756ce4828b6563467e8c7394a4ea2a0911cb01d5"

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
