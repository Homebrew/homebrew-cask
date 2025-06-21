cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.4"
  sha256 arm:   "06da423a1cebc4c9d525aaf9ae0f800bc591cd718205bf10de868096a2b5aaf7",
         intel: "a2c88cf79782ad32f541fc043702cbfbb7bf0861f1c0d85e588bc8ef9328e9f2"

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
