cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.1.1"
  sha256 arm:   "2740eb0e36fcd3c77091579576c197cf86d529a6d5d89bf8df8c0a56ade370b0",
         intel: "f21bac19ddede20a19c001bd269c5fcbe256a56c15def50b78f02307c3a88bb0"

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

  app "Wealthfolio.app"

  zap trash: [
    "~/Library/Application Support/com.teymz.wealthfolio",
    "~/Library/Caches/com.teymz.wealthfolio",
    "~/Library/WebKit/com.teymz.wealthfolio",
  ]
end
