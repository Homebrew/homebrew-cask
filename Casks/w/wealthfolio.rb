cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.13.0"
  sha256 arm:   "408ac859023eebee53791b68d7e32de62e94bb797edac48f1cf4f390ea8b6748",
         intel: "ddea62a24d2b3303b960b87e13c899f53ee275d7b0ed56c4af0d52ac45199f8c"

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
