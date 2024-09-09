cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.9"
  sha256 arm:   "56858c15c61deedd6566726e91650c021c14d465b59a4f2b616bba9980bfc9d5",
         intel: "52a14364cbae3be80190df6f6758be933d4405f23df02bc7d735b5a4c5c3b483"

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
