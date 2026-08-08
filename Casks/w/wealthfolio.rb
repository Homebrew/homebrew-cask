cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.3"
  sha256 arm:   "352b19e9bb8ddceb4940e6ca4d50fe98d536e459221395bf6387bdd77365c0ea",
         intel: "43a149a7f9a00dd8ebb9129d52c9ed18004c5d854cc66812fbd2a50e26dbcdf9"

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
