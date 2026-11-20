cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.13.1"
  sha256 arm:   "a39d5e508676c83115ce8d208409b0c60276384db976bfa60dfd2dc9ada3c8ab",
         intel: "0b0f31ccb64b61606da083ccf2940de3910d7ad43540930d8e63f49c8c4b71e8"

  url "https://github.com/afadil/wealthfolio/releases/download/v#{version}/Wealthfolio_#{version}_#{arch}.dmg"
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
  depends_on macos: :monterey

  app "Wealthfolio.app"

  zap trash: [
    "~/Library/Application Support/com.teymz.wealthfolio",
    "~/Library/Caches/com.teymz.wealthfolio",
    "~/Library/Logs/com.teymz.wealthfolio",
    "~/Library/WebKit/com.teymz.wealthfolio",
  ]
end
