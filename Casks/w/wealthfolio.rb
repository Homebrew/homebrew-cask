cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.22"
  sha256 arm:   "b33f17e3a458b11cef1ee17aba2b0ff398e7be559868ee77ed16cbd12ec6c963",
         intel: "092f46b03fb198696fa9831d2f8081d758bc622b99f858916edcbe5c585dbf09"

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
