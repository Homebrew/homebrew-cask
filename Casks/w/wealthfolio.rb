cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "9780726e05cdb107c5db98f18c9fe4d0f0098401c392b34a2820fd1aecc01ab1",
         intel: "438321dc35714283ae24db4017a1779ea3b481bc8f03707967d1f8f2aba7c130"

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
