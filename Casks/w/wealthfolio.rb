cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.10.0"
  sha256 arm:   "a9b3a2959acd3ac2449509fe08d5dbebf9d931d4c84ee14fed7983438dd256b3",
         intel: "a8510528110680f9e0021aa12748a5f44c2d9488053f7136290002738614264a"

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
    "~/Library/WebKit/com.teymz.wealthfolio",
  ]
end
