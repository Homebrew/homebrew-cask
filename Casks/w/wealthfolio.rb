cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.4"
  sha256 arm:   "0627f2d627a0eff92eba20eabb85c17ecd02690fda1dc680f413a4d93e812b90",
         intel: "75f0a530c82d221903c1fabf0639883738e08461da1eda42bfc1c392ece20bfa"

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
