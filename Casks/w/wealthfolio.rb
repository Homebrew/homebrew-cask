cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.12"
  sha256 arm:   "f6499369220b89b21b71ecbe418184d004fc07b0ddcf983f3b7ad410f1cd162d",
         intel: "4da3dfca3076d20a3f6642eed1c7e39fd6e7470450c0c63741c7c5e429fbf8fd"

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
