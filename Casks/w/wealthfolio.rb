cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.20"
  sha256 arm:   "7d28f349d05c1d49f5a50836cf208915f92d839b5bd751240644b4f32e34ec66",
         intel: "7b4f6c64d0ae9a5fdb5af3f69998f254c738e03de6254593c672681a8e069540"

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
