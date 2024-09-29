cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.17"
  sha256 arm:   "febbd7662037944b225c39ba667cc733408005d3df8bb140dc905b649ced27b2",
         intel: "18eba848c1177b1e56dd898c86d1ac9014a8da403c4c40978508a37d7bf24abd"

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
