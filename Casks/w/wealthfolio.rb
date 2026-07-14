cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.2"
  sha256 arm:   "a2e2f58f2cbdfc52cdf46979bcc699a6ba03273f62fe05ea0cb5b6cba9776c11",
         intel: "83010ece075212baaa0c430d1062023c2fdffcd903ca314f3723c073cce000e5"

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
  depends_on :macos

  app "Wealthfolio.app"

  zap trash: [
    "~/Library/Application Support/com.teymz.wealthfolio",
    "~/Library/Caches/com.teymz.wealthfolio",
    "~/Library/WebKit/com.teymz.wealthfolio",
  ]
end
