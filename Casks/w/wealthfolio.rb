cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.4.0"
  sha256 arm:   "eaf1a36f0aba42905ea387929642b33ac3ded9ce09ff24ccff6b7e6259a3b5e3",
         intel: "e8bb49566d40d6711e321f725515e38fdc2c8db55f9a8bfcb06076c6f6df9106"

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
