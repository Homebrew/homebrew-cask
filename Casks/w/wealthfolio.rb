cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "53cf613726675708d3875bdc3806bfa89c79a39cb3e25abe85fd967eec710dcb",
         intel: "32274584f616c887f989c8e22cf24607dbf82888c080846cfe39f0e1dc4c8122"

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
